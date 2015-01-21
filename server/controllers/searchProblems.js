var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);

var Problem = require('../models/problem');

function searchProblems (text, setPattern, startYear, endYear) {

    Problem.find().where('meta.setPattern', setPattern).where('meta.setInstance').gte(startYear).lte(endYear).exec(function (err, problems) {
        if (err)
            console.log(err);

        res.send(problems);
    })
};

function useless (req, res) {
    return false;
}

module.exports = useless;