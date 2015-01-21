// setup database
var mongoose = require('mongoose');
mongoose.connect('MONGO_DB_PATH');

// load object constructors
var problemMeta = require('../../server/models/prototypes/problemMeta');
var response = require('../../server/models/prototypes/response');

// load models
var Problem = require('../../server/models/problem');

// load data from JSON file
var fs = require('fs');
var data = JSON.parse(fs.readFileSync('../scrapers/problems/usamo.json', 'utf8'));

for (var i=0; i<data.length; i++) {
    var curdatum = data[i];

    Problem.create({
        meta: new problemMeta.usamo(curdatum.year, curdatum.problem_number - 1),
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        response: new response.noResponse()
    });

}