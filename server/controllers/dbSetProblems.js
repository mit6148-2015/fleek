var ObjectId = require('mongoose').Types.ObjectId; 
var Set = require('../models/set');
var Problem = require('../models/problem');

function setProblems (req, res) {
    Set.findOne( { _id : ObjectId(req.query.id) }).exec(function (err, set) {
        if (err)
            console.log(err);

        populatedSet = {};
        populatedSet['meta'] = set.meta;
        populatedSet['problems'] = [];

        addProblem(0);

        function addProblem (index) {
            problemId = set.problems[index]
            Problem.findById(problemId).populate('tags').exec(function (err, problem) {
                populatedSet['problems'].push(problem)

                index++;
                if (index < set.problems.length) {
                    addProblem(index);
                } else {
                    res.send(populatedSet);
                }
            })
        }
    });
};

module.exports = setProblems;