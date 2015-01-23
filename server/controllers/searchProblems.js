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

    // make sure setPatterns is an array
    if (Object.prototype.toString.call(setPatterns) === "[object String]")
        setPatterns = [setPatterns];
    
    Problem.find(textSearch)
    .where('meta.setPattern').in(setPatterns)
    .where('meta.setInstance').gte(startYear).lte(parseInt(endYear)+"z")
    .select('_id meta')
    .exec(function (err, problems) {
        if (err)
            console.log(err);

        res.send(problems);
    });
};

module.exports = searchProblems;