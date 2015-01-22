var mongoose = require('mongoose');
var ObjectId = require('mongoose').Types.ObjectId; 
var dbConfig = require('../config/database');
mongoose.createConnection(dbConfig.uri);

var Problem = require('../models/problem');

function problemById (req, res) {
    Problem.findOne( { _id : ObjectId(req.query.pid) },function (err, problems) {
        if (err)
            console.log(err);

        res.send(problem);
    });
};

module.exports = problemById;