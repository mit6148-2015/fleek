function profileInfo (req, res) {
    var username = req.body.params.username;

    User.findOne( { 'username' : username }, function (err, user) {
        if (err)
            console.log(err);

        var profileObject = {};
        profileObject['user'] = user;
        res.send(profileObject);
    });    
}

module.exports = profileInfo;