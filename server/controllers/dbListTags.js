var Tag = require('../models/tag');

function dbListTags(req, res) {

    // find all tags in ascending order
    Tag.find({})
    .sort({ tagText: 'asc'})
    .exec(function (err, tags) {
        if (err)
            console.log(err);

        // accumulate tag information in array to be returned
        var allTags = [];
        if (tags.length > 0) {
            
            addIndex(0);
        } else {
            res.send(allTags);
        }

        function addIndex(index) {
            var tag = tags[index];

            // add to array single objects with single key 'text' containing actual tag text
            allTags.push({text: tag.tagText});

            // loop until last tag
            index++;
            if (index < tags.length) {
                addIndex(index);
            } else {
                res.send(allTags);
            }
        }
    });
};

module.exports = dbListTags;