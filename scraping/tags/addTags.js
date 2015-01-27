var fs = require('fs');
var readline = require('readline');
var stream = require('stream');
var Tag = require('../../server/models/tag.js')
var mongoose = require('mongoose');
var ObjectId = mongoose.Types.ObjectId;

// set up streams
var instream = fs.createReadStream('./alltags.json');
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
    mongoose.connect('mongodb://localhost/fleekdb');

    function doItFor(index, mongoose) {
        var tagtext = tags[index]; 
        
        Tag.create({
            tagText: tagtext,
            parentTags: []
        }, function(err, createdTag){
            if (err)
                console.log(err);

            index++;
            if (index<tags.length) {
                doItFor(index, mongoose);
            } else {
                getIdList(tags, tagos, mongoose);
            }   
        });     
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
        if (tago.parentTags.length > 0) {
            addThisParent(tago, 0);    
        } else {
            moveOn();
        }
        
        function addThisParent(tago, parentIndex) {
            tagoid = idlist[tago.tag];
            parentoid = new ObjectId(idlist[tago.parentTags[parentIndex]]);

            if (tago.parentTags[parentIndex] !== 'fleek') {
                Tag.findByIdAndUpdate(tagoid, { $push: {parentTags : parentoid}}, function (err, foundTag) {
                    if (err)
                        console.log(err);

                    parentIndex++;
                    if (parentIndex < tago.parentTags.length) {
                        addThisParent(tago, parentIndex);
                    } else {
                        moveOn();
                    }
                });
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

