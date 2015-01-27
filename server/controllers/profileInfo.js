function profileInfo (req, res) {
    var user = req.user;
    var profileObject = {};

    profileObject['user'] = user;

    res.send(profileObject);
}

module.exports = profileInfo;