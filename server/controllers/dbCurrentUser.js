var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function dbCurrentUser(req, res) {
    
    // find user with given ID
    User.findOne({ _id : ObjectId(req.user._id) }, function (err, user) {
        if (err)
            console.log(err);
        
        // if found, send user
        if (user) {
            res.send(user);
        } else {
            console.log('No user found');
        }
    });
};

module.exports = dbCurrentUser;