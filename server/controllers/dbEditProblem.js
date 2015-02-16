var ObjectId = require('mongoose').Types.ObjectId; 
var Problem = require('../models/problem');

function dbEditProblem(req, res) {
    Problem.findOne( { _id : ObjectId(req.query.id) }).populate('tags').exec(function (err, problem) {
        if (err) 
            console.log(err)

        if (problem) {
            problem.statement = req.body.params.statement;
            user.save();
        } else {
            console.log('Problem not found');
        }
    });
};

module.exports = dbEditProblem;