var User = require('../models/user');

function profileInfo (req, res) {
    var username = req.query.username;

    User.findOne({ 'username' : username }, function (err, user) {
        if (err)
            console.log(err);

        var profileObject = {};
        profileObject['user'] = user;
        res.send(profileObject);
    });    
}

module.exports = profileInfo;