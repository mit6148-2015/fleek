// setup database
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/fleekdb');

// load object constructors
var problemMeta = require('../../server/models/prototypes/problemMeta');
var response = require('../../server/models/prototypes/response');

// load models
var Problem = require('../../server/models/problem');

// load data from JSON file
var fs = require('fs');
var data = JSON.parse(fs.readFileSync('../answers/amc8_answers.json', 'utf8'));

function doItFor (index, pnum) {

    var curdatum = data[index];
    
    Problem.findOne({ 'meta.setPattern' : 'AMC 8', 'meta.setInstance' : String(curdatum.year), 'meta.setIndex' : pnum }, function (err, problem){
        var letter = curdatum.answers[pnum];
        var number = 0;
        if (letter == "a") number = 0;
        if (letter == "b") number = 1;
        if (letter == "c") number = 2;
        if (letter == "d") number = 3;
        if (letter == "e") number = 4;

        console.log(String(number) + letter);

        problem.response.correctIndex = number;
        problem.markModified('response');
        problem.save();

        // HELLA TRICKY STUFF
        pnum++;

        if (pnum == 25) {
            pnum = 0;
            index++;
        }

        if (index < data.length) {
            doItFor(index, pnum);
        }

    });
    
}
    
doItFor(0,0);