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
var data = JSON.parse(fs.readFileSync('../../scraping/asy_getters/amc12_probs_asy.json', 'utf8'));

function doItFor(index) {
    var curdatum = data[index];
    
    var asyAttachments = {};
    if (curdatum.image_tags.length>0) {
        asyAttachments = {svg : []};

        for (var i=0; i<curdatum.image_tags.length; i++) {
            var attObject = {}
            var tag = curdatum.image_tags[i];
            attObject[tag] = tag + ".svg";
            asyAttachments.svg.push(attObject);
        }
    }

    var name_modifier;
    if (curdatum.contest == "AMC 12")
        name_modifier = "";
    if (curdatum.contest == "AMC 12 A")
        name_modifier = "A";
    if (curdatum.contest == "AMC 12 B")
        name_modifier = "B";
    
    Problem.create({
        meta: new problemMeta.amc12(curdatum.year, name_modifier, curdatum.problem_number),
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        attachments: asyAttachments,
        response: new response.multipleChoice(5, curdatum.answer_names, curdatum.answer_choices, -1)
    });

    index++;
    if (index < data.length) {
        doItFor(index);
    } else {
        mongoose.disconnect();
        console.log('Added ' + index + ' documents for AMC 12.');
    }

}

doItFor(0);
