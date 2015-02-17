var auth = function(req, res, next){
    if (!req.isAuthenticated()) {
        res.sendStatus(401); // 401 if not authenticated
    } else {
        next(); // otherwise proceed
    }
}

module.exports = auth;