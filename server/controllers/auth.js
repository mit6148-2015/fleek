var auth = function(req, res, next){
    if (!req.isAuthenticated()) {
        res.sendStatus(401); 
    } else {
        returnObject = {};
        returnObject['username'] = req.user.username;
        returnObject['tutorial'] = req.user.tutorial;
        res.send(returnObject);
        next(); 
    }
}

module.exports = auth;