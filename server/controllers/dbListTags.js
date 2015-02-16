var Tag = require('../models/tag');

function dbListTags(req, res) {
    Tag.find({})
    .sort({ tagText: 'asc'})
    .exec(function (err, tags) {
        if (err)
            console.log(err);

        var taglist = [];
        if (tags.length > 0) {
            
            addIndex(0);
        } else {
            res.send(taglist);
        }

        function addIndex(index) {
            var tag = tags[index];

            taglist.push({text: tag.tagText});

            index++;
            if (index < tags.length) {
                addIndex(index);
            } else {
                res.send(taglist);
            }
        }
    });
};

module.exports = dbListTags;