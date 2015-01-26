var Tag = require('../models/tag');

function queryTags(req, res) {

    // res.send(req.query.test);

    Tag.find().exec(function (err, tags) {
        if (err)
            console.log(err);

        res.send(tags);
    });
    
};

module.exports = queryTags;