var ObjectId = require('mongoose').Types.ObjectId; 
var User = require('../models/user');

function currentUser (req, res) {
    User.findOne( { _id : ObjectId(req.user._id) },function (err, user) {
        if (err)
            console.log(err);

        res.send(user);
    });
};

module.exports = currentUser;