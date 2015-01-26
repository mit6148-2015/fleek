var fs = require('fs');
var readline = require('readline');
var stream = require('stream');
var Tag = require('../../server/models/tag.js')
var mongoose = require('mongoose');
var ObjectId = mongoose.Types.ObjectId;

// set up streams
var instream = fs.createReadStream('../../scraping/tags/alltags.json');
var outstream = new stream;
outstream.readable = true;
outstream.writable = true;

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
    var tagos = [];
    var tags = [];
    for (var i = 0; i<lines.length; i++) {
        var tago = JSON.parse(lines[i]);
        if( tags.indexOf(tago.tag) == -1 ) {
            tags.push(tago.tag);       
        }
        tagos.push(tago);
    }

    addTags(tags, tagos)
});

function addTags(tags, tagos) {
    // setup database
    var dbPath = require('./dbpath.js');
    mongoose.connect(dbPath.uri);

    function doItFor(index, mongoose) {
        var tagtext = tags[index]; 
        
        Tag.create({
            tagText: tagtext,
            parentTags: []
        });

        index++;
        if (index<tags.length) {
            doItFor(index, mongoose);
        } else {
            getIdList(tags, tagos, mongoose);
        }        
    }

    doItFor(0, mongoose);
}

function getIdList(tags, tagos, mongoose) {
    var idlist = {};
    
    function doItFor(index, mongoose) {
        var tagtext = tags[index]; 
        
        Tag.findOne({'tagText': tagtext}, function (err, tag) {
            if (err)
                console.log(err);
            if (tag) {
                var key = tag.tagText;
                idlist[key] = tag._id.toString();
            }

            index++;
            if (index<tags.length) {
                doItFor(index, mongoose);
            } else {
                addParents(tags, tagos, idlist, mongoose);
            }
        });       
    }

    doItFor(0, mongoose);
}


function addParents(tags, tagos, idlist, mongoose) {

    function doItFor(index, mongoose) {
        var tago = tagos[index]; 
        console.log(tago);
        addThisParent(tago, 0);

        function addThisParent(tago, parentIndex) {
            
            if (tago.parentTags.length > 0) {
                parentoid = new ObjectId(idlist[tago.parentTags[parentIndex]]);

                Tag.findByIdAndUpdate(idlist[tago.tag], { $push: {parentTags : parentoid}});
            }

            parentIndex++;
            if (parentIndex < tago.parentTags.length) {
                addThisParent(tago, parentIndex);
            } else {
                moveOn();
            }
        }

        function moveOn() {
            index++;
            if (index<tagos.length) {
                doItFor(index, mongoose);
            } else {
                closeDatabase(tags.length, mongoose);
            }
        }
    }

    doItFor(0, mongoose);
}

function closeDatabase(num, mongoose) {
    console.log('Added ' + num + ' tags.');
    mongoose.disconnect();
}

