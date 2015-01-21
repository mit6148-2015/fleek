var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);

var Problem = require('../models/problem');

function searchProblems (req, res) {
    console.log(req.body);
    queryText = '\"' + req.body.queryText + '\"';
    setPattern = req.body.contest;
    startYear = String(req.body.startYear);
    endYear = String(req.body.endYear);

    Problem.find({$text: { $search: queryText }})
    .where('meta.setPattern', setPattern)
    .where('meta.setInstance').gte(startYear).lte(endYear)
    // .select('statement')
    .exec(function (err, problems) {
        if (err)
            console.log(err);

        res.send(problems);
    });
};

module.exports = searchProblems;