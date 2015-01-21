var auth = function(req, res, next){
    if (!req.isAuthenticated()) 
        res.send(401); 
    else 
        next(); 
}

module.exports = auth;