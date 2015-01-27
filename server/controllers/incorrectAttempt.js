var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');
var Problem = require('../models/problem');

function incorrectAttempt(req, res) {

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
                    addProblemAttempt();
                } else {
                    res.send('Problem already attempted');
                }
            } else {
                console.log('User not found');
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
                updateRating(problem.stats.solvedCount, problem.stats.attemptedCount)
            } else {
                console.log('Problem not found');
            }
        });        
    }

    function updateRating(solved, attempted) {
        var userId = req.user.id;
        var ratingChange = 1 + 9 * (1 - solved/attempted); // rating formula

        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user) {
                user.stats.rating -= ratingChange; // subtract for incorrect
                console.log('Rating changed by ' + ratingChange + ', new rating is ' + user.stats.rating);
                user.save();
                res.send('Your fleek level dropped by ' + ratingChange + ' to ' + user.stats.rating);
            } else {
                console.log('User not found');
            }

        });

    }

}

module.exports = incorrectAttempt;