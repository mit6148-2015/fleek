// setup database
var mongoose = require('mongoose');
mongoose.connect('PATH_TO_MONGODB');

// load object constructors
var problemMeta = require('../server/models/prototypes/problemMeta');
var response = require('../server/models/prototypes/response');

// load models
var Problem = require('../server/models/problem');

// load data from JSON file
var fs = require('fs');
var data = JSON.parse(fs.readFileSync('./scrapers/usamo.json', 'utf8'));

for (var i=0; i<data.length; i++) {
    var curdatum = data[i];

    Problem.create({
        meta: new problemMeta.usamo(curdatum.year, 2),
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        response: new response.noResponse()
    });

    console.log('added problem ' + i);
}

