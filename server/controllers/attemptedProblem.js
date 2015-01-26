var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function attemptedProblem(req, res) {

    if(req.user){
        userId = req.user.id;
        problemObjectId = new ObjectId(req.body.params.id);

        User.findById(userId, function (err, user) {
            if (err)
                console.log(err);

            if (user.stats.attemptedProblem.indexOf(problemObjectId) == -1) {
                user.stats.attemptedProblem.push(problemObjectId);
                user.stats.attemptedCount = user.stats.attemptedProblem.length;
                user.save();
                res.send('Problem attempt recorded');
            } else {
                res.send('Problem already attempted');
            }
        });

        
    }

}

module.exports = attemptedProblem;