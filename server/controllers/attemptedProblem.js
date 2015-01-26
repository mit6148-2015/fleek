var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');
var Problem = require('../models/problem');

function attemptedProblem(req, res) {

    if(req.user){
        var userId = req.user.id;
        var problemObjectId = new ObjectId(req.body.params.id);

        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user.stats.attemptedProblems.indexOf(problemObjectId) == -1) {
                user.stats.attemptedProblems.push(problemObjectId);
                user.stats.attemptedCount = user.stats.attemptedProblems.length;
                user.save();
                
                addToProblemStats()

                res.send('Problem attempt recorded');
            } else {
                res.send('Problem already attempted');
            }
        });        
    }

    function addToProblemStats() {
        var problemId = req.body.params.id;
        Problem.findById(problemId, function (err, problem) {
            if (err)
                console.log(err);

            console.log('here reached');
            console.log(problem);
            if (problem) {
                problem.stats.attemptedCount++;
                problem.save();
                console.log(problem + ' saved');
            }
        });        
    }

}

module.exports = attemptedProblem;