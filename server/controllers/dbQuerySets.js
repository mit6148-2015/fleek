var Set = require('../models/set');

function querySets (req, res) {

    // get conditions
    var queryText = String(req.query.q);
    var startYear = String(req.query.startYear);
    var endYear = String(req.query.endYear);
    var patterns = req.query.patterns;
    if (Object.prototype.toString.call(patterns) === "[object String]")
        patterns = [patterns]; // make sure patterns is an array

    // uses year condition only if instance is between these years
    var FIRSTYEAR = "1900";
    var LASTYEAR = "2100";

    // start query
    var query = Set.find();

    // query conditions
    query.where({$text: { $search: queryText }});
    query.or([{'meta.instance': {$gte: startYear, $lte: endYear + 'z'}},
        {'meta.instance': {$lte: FIRSTYEAR}},
        {'meta.instance': {$gte: LASTYEAR}}]); // in year range, or instance doesn't indicate year
    query.where('meta.pattern').in(patterns)

    // only return _id and meta fields
    query.select('_id meta');

    // respond to request with list of found sets
    query.exec(function (err, sets) {
        if (err)
            console.log(err);

        res.send(sets);
    });
    
}

module.exports = querySets;