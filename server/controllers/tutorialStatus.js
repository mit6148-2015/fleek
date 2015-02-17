function tutorialStatus (req, res) {

    // sends object containing username and tutorial fields for current user
    var returnObject = {};
    returnObject['username'] = req.user.username;
    returnObject['tutorial'] = req.user.tutorial;
    res.send(returnObject);
}

module.exports = tutorialStatus;