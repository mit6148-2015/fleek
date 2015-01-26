var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function solvedProblem(req, res) {
    if(req.user){
        userId = req.user.id;
        problemId = req.body.params.id;

        User.findById(userId, function (err, user) {
            user.solvedProblems.push(new ObjectId(problemId));
            user.solvedCount = user.solvedProblems.length;
            user.save();
        });
    }

}

module.exports = solvedProblem;