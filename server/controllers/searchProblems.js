var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);

var Problem = require('../models/problem');

function searchProblems (req, res) {
    queryText = '\"' + req.query.queryText + '\"';
    setPatterns = req.query.contests;
    startYear = String(req.query.startYear);
    endYear = String(req.query.endYear);

    Problem.find({$text: { $search: queryText }})
    .where('meta.setPattern').in(setPatterns)
    .where('meta.setInstance').gte(startYear).lte(endYear)
    // .select('statement')
    .exec(function (err, problems) {
        if (err)
            console.log(err);

        res.send(problems);
    });
};

module.exports = searchProblems;