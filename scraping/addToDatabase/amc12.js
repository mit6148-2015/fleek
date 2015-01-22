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
var data = JSON.parse(fs.readFileSync('../problems/amc12_part1.json', 'utf8')); // have to repeat for other file

for (var i=0; i<data.length; i++) {
    var curdatum = data[i];

    if (curdatum=='AHSME')
        name_modifier = 'A';
    if (curdatum=='AMC 12 A')
        name_modifier = 'A';
    if (curdatum=='AMC 12 B')
        name_modifier = 'B';
    
    Problem.create({

        meta: new problemMeta.amc12(curdatum.year, name_modifier, curdatum.problem_number - 1),
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        response: new response.multipleChoice(5, curdatum.answer_names, curdatum.answer_choices, 0)
    });

}
