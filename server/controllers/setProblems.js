var ObjectId = require('mongoose').Types.ObjectId; 
var Set = require('../models/problem');

function setProblems (req, res) {
    Set.findOne( { _id : ObjectId(req.query.id) }).populate('problems').exec(function (err, set) {
        if (err)
            console.log(err);

        res.send(set.problems);
    });
};

module.exports = setProblems;