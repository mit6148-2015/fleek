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
var data = JSON.parse(fs.readFileSync('../asy_getters/amc10_probs_asy.json', 'utf8'));

function doItFor(index) {
    var curdatum = data[index];
    var asyAttachments = [];

    for (var i=0; i<curdatum.image_tags.length; i++) {
        var tag = curdatum.image_tags[i];
        asyAttachments.push({tag : tag + ".svg"});
    }
    
    Problem.create({
        meta: new problemMeta.amc10(curdatum.year, curdatum.name_modifier, curdatum.problem_number - 1),
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
        console.log('Done! Added ' + index + ' documents.');
    }

}

doItFor(0);
