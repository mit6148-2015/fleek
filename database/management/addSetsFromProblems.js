var fs = require('fs');
var readline = require('readline');
var stream = require('stream');
var setMeta = require('../../server/models/prototypes/setMeta.js')
var Set = require('../../server/models/set.js')

// set up streams
var instream = fs.createReadStream('../collections/problems.json');
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
    var contests = [];
    var sets = [];
    for (var i = 0; i<lines.length; i++) {
        var problem = JSON.parse(lines[i]);
        var contest = problem.meta.setPattern + " " + problem.meta.setInstance;
        var set = [problem.meta.setPattern, problem.meta.setInstance, 1, []];

        if (contests.indexOf(contest) == -1) {
            contests.push(contest);
            set[3][problem.meta.setIndex] = problem._id;
            sets.push(set);
        } else {
            index = contests.indexOf(contest);
            sets[index][2]++;
            sets[index][3][problem.meta.setIndex] = problem._id;
        }
    }

    makeSets(sets);
});

function makeSets(sets) {
    for (var i = 0; i < sets.length; i++) {
        var set = sets[i]; 
        var pattern = set[0];
        var metaFunction = setMeta[pattern];
        var meta = new metaFunction(set[1], set[2]);
        var problems = set[3];
        console.log(meta);
        console.log(problems);        
    }

    // metaFunction = setMeta[set[0]]; 
    // console.log(metaFunction);
    // var meta = new metaFunction(set[1], set[2]);
    // var problems = set[3];
    // console.log(meta);
    // console.log(problems);
    // for (var i = 0; i<sets.length; i++) {
        
    // }   
}



