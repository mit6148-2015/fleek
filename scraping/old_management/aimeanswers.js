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
var data = JSON.parse(fs.readFileSync('../../scraping/answers/aime_answers.json', 'utf8'));

var counter = 0;

function doItFor (index, pnum) {

    var curdatum = data[index];
    var setInstance = (String(curdatum.year) + " " + String(curdatum.name_modifier)).trim();
    
    Problem.findOne({ 'meta.setPattern' : 'AIME', 'meta.setInstance' : setInstance, 'meta.setIndex' : pnum }, function (err, problem){
        if (err)
            console.log(err);

        if (!problem)
            console.log("HELP! Can't find a problem... searching for instance " + setInstance + " index " + pnum);

        var number = parseInt(curdatum.answers[pnum]);
        
        problem.response.answer = number;
        problem.markModified('response');
        problem.save();

        counter++;

        pnum++;

        if (pnum == curdatum.answers.length) {
            pnum = 0;
            index++;
        }

        if (index < data.length) {
            doItFor(index, pnum);
        } else {
            mongoose.disconnect();
            console.log('Added ' + counter + ' answers for AIME.');
        }

    });
    
}
    
doItFor(0,0);
