var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);

var Problem = require('../models/problem');

function searchProblems (req, res) {
    queryText = '\"' + req.query.queryText + '\"';
    setPatterns = req.query.contests;
    startYear = String(req.query.startYear);
    endYear = String(req.query.endYear);

    if (queryText)
        textSearch = {$text: { $search: queryText }};
    else
        textSearch = {};

    Problem.find(textSearch)
    .where('meta.setPattern').in(setPatterns)
    .where('meta.setInstance').gte(startYear).lte(endYear)
    .exec(function (err, problems) {
        if (err)
            console.log(err);

        res.send(problems);
    });
};

module.exports = searchProblems;