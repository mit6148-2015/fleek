var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');
var Problem = require('../models/problem');

function statsCorrect(req, res) {

    if(req.user){
        var userId = req.user.id; // current user ID
        var problemObjectId = new ObjectId(req.body.params.id);

        // find current user
        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user) {

                // check if problem has laready been attempted
                if (user.stats.attemptedProblems.indexOf(problemObjectId) == -1) {

                    // update user stats
                    user.stats.attemptedProblems.push(problemObjectId);
                    user.stats.solvedProblems.push(problemObjectId);
                    user.stats.attemptedCount = user.stats.attemptedProblems.length;
                    user.stats.solvedCount = user.stats.solvedProblems.length;
                    user.save();

                    // find problem and udpate problem stats for attempting, then call next function
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

                // increment attempted count and save
                problem.stats.attemptedCount++;
                problem.save();

                // udpate problem stats for solving, then call next function
                addProblemSolve();
            } else {
                console.log('Problem not found');
            }

        });
    }

    function addProblemSolve() {

        // find problem with given ID
        var problemId = req.body.params.id;
        Problem.findById(problemId, function (err, problem) {
            if (err)
                console.log(err);

            if (problem) {

                // increment solved count and save
                problem.stats.solvedCount++; 
                problem.save();

                // update rating after problem stats recorded
                updateRating(problem.stats.solvedCount, problem.stats.attemptedCount)
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
                // update rating, save, and respond with message
                user.stats.rating += ratingChange; // add for correct
                console.log('Rating changed by ' + ratingChange + ', new rating is ' + user.stats.rating);
                user.save();
                res.send('Nice! Your fleek level went up by ' + ratingChange + ' to ' + user.stats.rating);
            } else {
                console.log('User not found');
            }

        });

    }

}

module.exports = statsCorrect;