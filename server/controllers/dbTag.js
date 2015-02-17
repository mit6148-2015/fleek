var ObjectId = require('mongoose').Types.ObjectId; 
var Tag = require('../models/tag');

function dbTag(req, res) {

    // find tag with given ID
    Tag.findOne( { _id : ObjectId(req.query.id) },function (err, tag) {
        if (err)
            console.log(err);

        // if found, send tag
        if (tag) {
            res.send(tag);
        } else {
            console.log('Tag not found');
        }
    });
};

module.exports = dbTag;