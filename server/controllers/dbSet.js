var ObjectId = require('mongoose').Types.ObjectId; 
var Set = require('../models/set');

function dbSet(req, res) {

    // find set with given ID
    Set.findOne( { _id : ObjectId(req.query.id) },function (err, set) {
        if (err)
            console.log(err);

        // if found, send set
        if (set) {
            res.send(set);
        } else {
            console.log('Set not found');
        }        
    });
};

module.exports = dbSet;