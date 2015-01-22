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
var data = JSON.parse(fs.readFileSync('../answers/aime_answers.json', 'utf8'));

function doItFor (index, pnum) {

    var curdatum = data[index];
    
    Problem.findOne({ 'meta.setPattern' : 'AIME', 'meta.setInstance' : String(curdatum.year)+ " " + String(curdatum.name_modifier), 'meta.setIndex' : pnum }, function (err, problem){
        var number = curdatum.answers[pnum];

        console.log(String(number));

        problem.response.answer = number;
        problem.markModified('response');
        problem.save();

        // HELLA TRICKY STUFF
        pnum++;

        if (pnum == 15) {
            pnum = 0;
            index++;
        }

        if (index < data.length) {
            doItFor(index, pnum);
        }

    });
    
}
    
doItFor(0,0);