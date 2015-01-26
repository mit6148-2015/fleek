var Problem = require('../models/problem');

function queryProblems (req, res) {

    // get conditions
    var queryText = String(req.query.q);
    var tags = req.query.tags;
    if (Object.prototype.toString.call(setPatterns) === "[object String]")
        tags = [tags]; // make sure setPatterns is an array
    console.log(tags);
    var startYear = String(req.query.startYear);
    var endYear = String(req.query.endYear);
    var setPatterns = req.query.setPatterns;
    if (Object.prototype.toString.call(setPatterns) === "[object String]")
        setPatterns = [setPatterns]; // make sure setPatterns is an array

    // uses year condition only if instance is between these years
    var FIRSTYEAR = "1900";
    var LASTYEAR = "2100";

    // start query
    var query = Problem.find();

    // query conditions
    query.where({$text: { $search: queryText }});
    query.or([{'meta.setInstance': {$gte: startYear, $lte: endYear + 'z'}},
        {'meta.setInstance': {$lte: FIRSTYEAR}},
        {'meta.setInstance': {$gte: LASTYEAR}}]); // in year range, or instance doesn't indicate year
    query.where('meta.setPattern').in(setPatterns);

    // only return _id, meta, and stats fields
    query.select('_id meta stats');

    // respond to request with list of found problems
    query.exec(function (err, problems) {
        if (err)
            console.log(err);

        res.send(problems);
    });

}

module.exports = queryProblems;
