var ObjectId = require('mongoose').Types.ObjectId; 
var Problem = require('../models/problem');

function problemById (req, res) {
    Problem.findOne( { _id : ObjectId(req.query.id) }).populate('tags').exec(function (err, problem) {
        if (err)
            console.log(err);

        res.send(problem);
    });
};

module.exports = problemById;