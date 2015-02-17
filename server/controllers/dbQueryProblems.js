var Problem = require('../models/problem');
var Tag = require('../models/tag');

function dbQueryProblems(req, res) {

    // fill dictionary
    getTagDict();
    function getTagDict() {

        // dictionary that maps tag texts to tag IDs
        var tagDict = {};

        // find all tags
        Tag.find({},function (err, tags) {
            if (err)
                console.log(err);

            doItFor(0);

            function doItFor(index) {
                var tag = tags[index];

                // add current tag to dictionary
                tagDict[tag.tagText] = tag._id;

                // loop until last tag
                index++;
                if(index < tags.length) {
                    doItFor(index);
                } else {
                    mapTags(tagDict); // call next step with dictionary
                }
            }
        });
    }

    // map received tag texts to tag IDs using tag dictionary
    function mapTags(tagDict) {
        var tagTexts = req.query.tags;
        if (Object.prototype.toString.call(tagTexts) === "[object String]")
            tagTexts = [tagTexts]; // make sure setPatterns is an array
        
        // create new array of tag IDs
        var tagIds = [];
        for (var i = 0; i < tagTexts.length; i++) {
            tagIds.push(tagDict[tagTexts[i]]);
        }

        // call next step with array of query tag IDs
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
        if (queryText !== " ") {
            query.where({$text: { $search: queryText }});
        }
        query.or([{'meta.setInstance': {$gte: startYear, $lte: endYear + 'z'}},
            {'meta.setInstance': {$lte: FIRSTYEAR}},
            {'meta.setInstance': {$gte: LASTYEAR}}]); // in year range, or instance doesn't indicate year
        query.where('meta.setPattern').in(setPatterns);

        // only return _id, meta, and stats fields
        query.select('_id meta stats tags');

        // respond to request with list of found problems after filtering by tags
        query.exec(function (err, problems) {
            if (err)
                console.log(err);
            
            // array to contain problems with tags in list of query tags
            var goodProblems;

            // if 'undefined' is not in list of tags then there is at least one query tag to filter with
            if (tagIds.indexOf(undefined) == -1) {
                goodProblems = problems.filter(function (problem) {
                    // array of tags that are in both the list of problem tags and list of query tags
                    var matchingTags = tagIds.filter(function (tagId) {
                        return (problem.tags.indexOf(tagId) !== -1);
                    });
                    return (matchingTags.length > 0); // true if at least one matching tag
                });            
            } else {
                goodProblems = problems; // return all found problems if no query tags
            }
    
            // send final array of problems
            res.send(goodProblems);
        });
    }
}

module.exports = dbQueryProblems;
