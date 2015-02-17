var ObjectId = require('mongoose').Types.ObjectId; 
var Problem = require('../models/problem');

function dbEditProblem(req, res) {
    
    // find problem with given ID
    Problem.findOne({ _id : ObjectId(req.body.params.id) }, function (err, problem) {
        if (err) 
            console.log(err);

        // if found, update statement and save
        if (problem) {
            problem.statement = req.body.params.statement;
            user.save();
        } else {
            console.log('Problem not found');
        }
    });
};

module.exports = dbEditProblem;