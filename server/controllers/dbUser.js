var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function dbUser(req, res) {
    User.findOne( { _id : ObjectId(req.query.id) },function (err, user) {
        if (err)
            console.log(err);

        res.send(user);
    });
};

module.exports = dbUser;