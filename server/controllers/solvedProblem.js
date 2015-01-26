var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function solvedProblem(req, res) {

    if(req.user){
        userId = req.user.id;
        problemObjectId = new ObjectId(req.body.params.id);

        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user.stats.solvedProblems.indexOf(problemObjectId) == -1) {
                user.stats.solvedProblems.push(problemObjectId);
                user.stats.solvedCount = user.stats.solvedProblems.length;
                user.save();
                res.send('Problem solve recorded');
            } else {
                res.send('Problem already solved');
            }
        });

    }

}

module.exports = solvedProblem;