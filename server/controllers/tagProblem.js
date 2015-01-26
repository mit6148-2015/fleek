var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');
var Tag = require('../models/tag');

function tagProblem(req, res) {

    problemId = req.body.params.problemId;
    tagObjectId = new ObjectId(req.body.params.tagId);

    Problem.findById(problemId, function (err, problem) {
        if (err)
            console.log(err);

        if (problem.tags.indexOf(tagObjectId) == -1) {
            problem.tags.push(tagObjectId);
            problem.save();
            res.send('New tag added');
        } else {
            res.send('Tag already added');
        }
    });

}

module.exports = tagProblem;