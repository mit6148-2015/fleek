var auth = function(req, res, next){
    if (!req.isAuthenticated()) {
        res.sendStatus(401); 
    } else {
        next(); 
    }
}

module.exports = auth;