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
var data = JSON.parse(fs.readFileSync('../answers/amc10_answers.json', 'utf8'));

function doItFor (index, pnum) {

    var curdatum = data[index];
    var setInstance = (String(curdatum.year) + " " + String(curdatum.name_modifier)).trim();
    
    Problem.findOne({ 'meta.setPattern' : 'AMC 10', 'meta.setInstance' : setInstance, 'meta.setIndex' : pnum }, function (err, problem){
        if (err)
            console.log(err);

        if (!problem)
            console.log("HELP! Can't find a problem...");

        var letter = curdatum.answers[pnum];
        var number = 0;
        if (letter == "a") number = 0;
        if (letter == "b") number = 1;
        if (letter == "c") number = 2;
        if (letter == "d") number = 3;
        if (letter == "e") number = 4;

        problem.response.correctIndex = number;
        problem.markModified('response');
        problem.save();

        pnum++;

        if (pnum == 25) {
            pnum = 0;
            index++;
        }

        if (index < data.length) {
            doItFor(index, pnum);
        } else {
            mongoose.disconnect();
            console.log('Done! Added ' + index*25 + ' answers.');
        }

    });
    
}
    
doItFor(0,0);
