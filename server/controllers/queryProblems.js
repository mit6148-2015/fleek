var Problem = require('../models/problem');

function queryProblems (req, res) {

/*
    res.send(req.query.test1);
    console.log(req.query.test2);
*/


    
    queryText = req.query.queryText;
    setPatterns = req.query.contests;
    startYear = String(req.query.startYear);
    endYear = String(req.query.endYear);

    // if (req.query.queryText==="undefined") {
    //     textSearch = {};
    // }
    // else {
    //     textSearch = {$text: { $search: queryText }};
    // }
    textSearch = {$text: { $search: queryText }};

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

module.exports = queryProblems;