var ObjectId = require('mongoose').Types.ObjectId; 
var Set = require('../models/set');

function setById (req, res) {
    Set.findOne( { _id : ObjectId(req.query.id) },function (err, set) {
        if (err)
            console.log(err);

        res.send(set);
    });
};

module.exports = setById;