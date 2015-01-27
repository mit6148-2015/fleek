var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');
var Problem = require('../models/problem');

function correctAttempt(req, res) {

    if(req.user){
        var userId = req.user.id;
        var problemObjectId = new ObjectId(req.body.params.id);

        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user) {
                if (user.stats.attemptedProblems.indexOf(problemObjectId) == -1) {
                    user.stats.attemptedProblems.push(problemObjectId);
                    user.stats.attemptedCount = user.stats.attemptedProblems.length;
                    user.save();
                    addProblemAttempt()
                    res.send('Problem attempt recorded');
                } else {
                    res.send('Problem already attmpted');
                }

                if (user.stats.solvedProblems.indexOf(problemObjectId) == -1) {
                    user.stats.solvedProblems.push(problemObjectId);
                    user.stats.solvedCount = user.stats.solvedProblems.length;
                    user.save();
                    addProblemSolve()
                    res.send('Problem solve recorded');
                } else {
                    res.send('Problem already solved');
                }

            }

        });
    }

    function addProblemAttempt() {
        var problemId = req.body.params.id;
        Problem.findById(problemId, function (err, problem) {
            if (err)
                console.log(err);

            if (problem) {
                problem.stats.attemptedCount++;
                problem.save();
        });        
    }

    function addProblemSolve() {
        var problemId = req.body.params.id;
        Problem.findById(problemId, function (err, problem) {
            if (err)
                console.log(err);

            if (problem) {
                problem.stats.solvedCount++;
                problem.save();
        });        
    }

}

module.exports = correctAttempt;