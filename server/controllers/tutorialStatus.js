function tutorialStatus (req, res) {
    var returnObject = {};
    returnObject['username'] = req.user.username;
    returnObject['tutorial'] = req.user.tutorial;
    res.send(returnObject);
}

module.exports = tutorialStatus;