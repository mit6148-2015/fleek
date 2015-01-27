var Problem = require('../models/problem');
var Tag = require('../models/tag');

function queryProblems (req, res) {

    var tagDict = {};

    getTagDict();

    function getTagDict() {
        Tag.find({},function (err, tags) {
            if (err)
                console.log(err);

            doItFor(0);

            function doItFor(index) {
                var tag = tags[index];

                tagDict[tag.tagText] = tag._id;

                index++;
                if(index < tags.length) {
                    doItFor(index);
                } else {
                    mapTags();
                }
            }
        });
    }

    function mapTags() {
        var tagTexts = req.query.tags;
        if (Object.prototype.toString.call(tagTexts) === "[object String]")
            tagTexts = [tagTexts]; // make sure setPatterns is an array
        
        var tagIds = [];
        for (var i = 0; i < tagTexts.length; i++) {
            tagIds.push(tagDict[tagTexts[i]]);
        }

        performQuery(tagIds);
    }

    function performQuery(tagIds) {
        // get conditions
        var queryText = String(req.query.q);
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
        query.select('_id meta stats tags');

        // respond to request with list of found problems
        query.exec(function (err, problems) {
            if (err)
                console.log(err);
            
            var goodProblems;

            if (tagIds.indexOf(undefined) == -1) {
                goodProblems = problems.filter(function (problem) {
                    var matchingTags = tagIds.filter(function (tagId) {
                        return (problem.tags.indexOf(tagId) !== -1);
                    });
                    return (matchingTags.length > 0);
                });            
            } else {
                goodProblems = problems;
            }
    
            res.send(goodProblems);
        });
    }

}

module.exports = queryProblems;
