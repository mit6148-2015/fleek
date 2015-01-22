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
var data = JSON.parse(fs.readFileSync('../asy_getters/usamo_probs_asy.json', 'utf8'));

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
    
    Problem.create({
        meta: new problemMeta.usamo(curdatum.year, curdatum.problem_number),
        source: {
            name: curdatum.source_name,
            url: curdatum.source_link,
        },
        statement: curdatum.problem_statement,
        attachments: asyAttachments,
        response: new response.noResponse()
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
