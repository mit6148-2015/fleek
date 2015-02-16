var ObjectId = require('mongoose').Types.ObjectId; 
var Tag = require('../models/tag');

function tagById (req, res) {
    Tag.findOne( { _id : ObjectId(req.query.id) },function (err, tag) {
        if (err)
            console.log(err);

        res.send(tag);
    });
};

module.exports = tagById;