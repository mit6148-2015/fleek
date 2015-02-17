var ObjectId = require('mongoose').Types.ObjectId; 
var Set = require('../models/set');
var Problem = require('../models/problem');

function dbSetProblems(req, res) {

    // find set with given ID
    Set.findOne( { _id : ObjectId(req.query.id) }).exec(function (err, set) {
        if (err)
            console.log(err);

        if (set) {
            // manually populate problems with tags because second-level population not supported by mongoose

            // set populated with problems containing tag text
            populatedSet = {};
            populatedSet['meta'] = set.meta;
            populatedSet['problems'] = [];

            addProblem(0);

            // use problem IDs to populate return object with raw problem information
            function addProblem (index) {

                // find problem with given ID from set
                problemId = set.problems[index]
                Problem.findById(problemId).populate('tags').exec(function (err, problem) {

                    // add problem to set array
                    populatedSet['problems'].push(problem)

                    // loop until last problem
                    index++;
                    if (index < set.problems.length) {
                        addProblem(index);
                    } else {
                        res.send(populatedSet);
                    }
                })
            }
        } else {
            console.log('Set not found');
        }

        });
};

module.exports = dbSetProblems;