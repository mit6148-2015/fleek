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
var data = JSON.parse(fs.readFileSync('../scrapers/aime.json', 'utf8'));

for (var i=0; i<data.length; i++) {
    var curdatum = data[i];

    Problem.create({
        meta: new problemMeta.aime(curdatum.year, curdatum.name_modifier, curdatum.problem_number - 1),
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        response: new response.integerAnswer(0)
    });

}