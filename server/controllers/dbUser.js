var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function dbUser(req, res) {

    // find user with given ID
    User.findOne( { _id : ObjectId(req.query.id) },function (err, user) {
        if (err)
            console.log(err);

        // if found, send user
        if (user) {
            res.send(user);
        } else {
            console.log('User not found')
        }
    });
};

module.exports = dbUser;