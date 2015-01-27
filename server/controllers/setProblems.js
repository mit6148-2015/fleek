var ObjectId = require('mongoose').Types.ObjectId; 
var Set = require('../models/set');

function setProblems (req, res) {
    Set.findOne( { _id : ObjectId(req.query.id) }).populate('problems').exec(function (err, set) {
        if (err)
            console.log(err);

        res.send(set);
    });
};

module.exports = setProblems;