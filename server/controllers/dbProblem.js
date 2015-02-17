var ObjectId = require('mongoose').Types.ObjectId; 
var Problem = require('../models/problem');

function dbProblem(req, res) {

    // find problem with given ID and populate tags so that tag texts are sent
    Problem.findOne( { _id : ObjectId(req.query.id) }).populate('tags').exec(function (err, problem) {
        if (err)
            console.log(err);

        // if found, send problem
        if (problem) {
            res.send(problem);
        } else {
            console.log('Problem not found')
        }
    });
};

module.exports = dbProblem;