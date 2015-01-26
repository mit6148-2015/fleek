// setup database
var mongoose = require('mongoose');
var dbPath = require('./dbpath.js');
mongoose.connect(dbPath.uri);

// load object constructors
var problemMeta = require('../../server/models/prototypes/problemMeta');
var response = require('../../server/models/prototypes/response');

// load models
var Problem = require('../../server/models/problem');

// load data from JSON file
var fs = require('fs');
var data = JSON.parse(fs.readFileSync('../../scraping/problems/scibowl.json', 'utf8'));

function doItFor(index) {
    var curdatum = data[index];
    
    var responseType;
    var responseToAdd;
    if (curdatum.question_type == "multiple_choice") {
        responseType = "multipleChoice";
        var answerIndex = -1;
        if (curdatum.answer == "W") {
            answerIndex = 0;
        } else if (curdatum.answer == "X") {
            answerIndex = 1;
        } else if (curdatum.answer == "Y") {
            answerIndex = 2;
        } else if (curdatum.answer == "Z") {
            answerIndex = 3;
        }
        responseToAdd = new response.multipleChoice(4, curdatum.choice_names, curdatum.choices, answerIndex)
    } else {
        responseType = "shortAnswer";
        responseToAdd = new response.shortAnswer(curdatum.answer);
    }

    var setInstance = String(curdatum.set_name) + " " + String(curdatum.round);
    var subject = curdatum.subject;

    var questionType;
    if (curdatum.question_level == "toss_up") {
        questionType = "Toss Up";
    } else {
        questionType = "Bonus";
    }

    var setIndex = 2 * (curdatum.problem_number - 1);
    if (questionType == "Bonus") {
        setIndex++;
    }

    var metaToAdd = new problemMeta.scibowl(setInstance, setIndex, responseType, subject, questionType);

    Problem.create({
        meta: metaToAdd,
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        response: responseToAdd
    });

    index++;
    if (index < data.length) {
        doItFor(index);
    } else {
        mongoose.disconnect();
        console.log('Added ' + index + ' documents for Science Bowl.');
    }

}

doItFor(0);
