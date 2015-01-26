var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');
var Problem = require('../models/problem');

function solvedProblem(req, res) {

    if(req.user){
        var userId = req.user.id;
        var problemObjectId = new ObjectId(req.body.params.id);

        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user.stats.solvedProblems.indexOf(problemObjectId) == -1) {
                user.stats.solvedProblems.push(problemObjectId);
                user.stats.solvedCount = user.stats.solvedProblems.length;
                user.save();

                addToProblemStats()
                
                res.send('Problem solve recorded');
            } else {
                res.send('Problem already solved');
            }
        });
    }

    function addToProblemStats() {
        var problemId = req.body.params.id;
        Problem.findById(problemId, function (err, problem) {
            if (err)
                console.log(err);

            if (problem) {
                problem.stats.solvedCount++;
                problem.save();
            }
        });        
    }

}

module.exports = solvedProblem;