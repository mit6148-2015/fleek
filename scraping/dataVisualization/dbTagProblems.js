var fs = require('fs');
var readline = require('readline');
var stream = require('stream');
var mongoose = require('mongoose');
var ObjectId = require('mongoose').Types.ObjectId; 
var Problem = require('../../server/models/problem');
var Tag = require('../../server/models/tag');

// set up streams
var instream = fs.createReadStream('./problems_with_tags.json');
var outstream = new stream;
outstream.readable = true;
outstream.writable = true;

var tagoids = {};
var num = 0;

// set up line reader
var rl = readline.createInterface({
    input: instream,
    output: outstream,
    terminal: false
});


// get lines (asynchronously)
var lines = [];
rl.on('line', function(line) {
    lines.push(line);
});

// run after reading file
rl.on('close', function() {    
    var pts = [];
    for (var i = 0; i<lines.length; i++) {
        var pt = JSON.parse(lines[i]);
        pts.push(pt);
    }

    getTagDict(pts);
});

function getTagDict(pts) {
    mongoose.connect('mongodb://localhost/fleekdb');

    Tag.find({},function (err, tags) {
        if (err)
            console.log(err);

        doItFor(0);

        function doItFor(index) {
            var tag = tags[index];

            tagoids[tag.tagText] = tag._id;

            index++;
            if(index < tags.length) {
                doItFor(index);
            } else {
                mongoose.disconnect();
                // console.log(tagoids);
                tagProblems(pts);
            }
        }
    });
}


function tagProblems(pts) {
    mongoose.connect('mongodb://localhost/fleekdb');

    function doItFor(index, mongoose) {
        var pt = pts[index]; 
        var tagtexts = pt['tags'];
        var problemId = pt['_id']['$oid'];

        // console.log('adding ' + tagtexts + ' to ' + problemId + ', that is ' + tagtexts.length + ' tags');

        Problem.findById(problemId, function (err, problem) {
            if (err)
                console.log(err);

            if (tagtexts.length > 0) {
                addForIdIndex(0);
            } else {
                next();
            }
            
            function addForIdIndex(ind) {
                var tagtext = tagtexts[ind];
                var tagObjectId = tagoids[tagtext];
                console.log(tagtext);

                if (problem.tags.indexOf(tagObjectId) == -1) {
                    // console.log(problem.tags + ' being pushed ' + tagObjectId);
                    problem.tags.push(tagObjectId);
                    // console.log('tag ' + tagtext + ' added to ' + problemId);
                } else {
                    // console.log('tag ' + tagtext + ' already exists for ' + problemId);
                }

                ind++;
                if (ind < tagtexts.length) {
                    addForIdIndex(ind);
                } else {
                    next();
                    problem.save();
                }
            }

            function next() {
                index++;
                if (index<pts.length) {
                    doItFor(index, mongoose);
                } else {
                    closeDatabase(mongoose);
                } 
            }

        });
   
    }

    doItFor(0, mongoose);
}

function closeDatabase(mongoose) {
    console.log('Added ' + num + ' tags.');
    mongoose.disconnect();
}
