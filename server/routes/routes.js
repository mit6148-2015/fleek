module.exports = function(app, passport) {

    var path = require('path');

    // landing page
    app.get('/', function(req, res) {
        res.sendFile(path.join(__dirname, '../../public/views/index.html'));
    });

    // general success for debugging
    app.get('/success', function(req, res) {
        res.sendFile(path.join(__dirname, '../../public/views/index.html'));
        console.log('success');
    });

    // signup via Passport
    app.post('/signup', passport.authenticate('local-signup'), function(req, res) {
        console.log('successful signup');
    });

    // login via Passport
    app.post('/login', passport.authenticate('local-login'), function(req, res) {
        console.log('successful login');
    });

    // logout via Passport
    app.get('/logout', function(req, res) {
        req.logout();
        res.redirect('/');
    });

    // provides list of countries
    app.get('/public/assets/countries.json', function(req, res) {
        res.sendFile(path.join(__dirname, '../../public/assets/countries.json'));
    });

    // 404 handling
    app.all('*', function(req, res) {
        res.sendFile(path.join(__dirname, '../../public/views/404.html'));
    });

}

function isLoggedIn(req, res, next) {

    // if user is authenticated in the session, carry on 
    if (req.isAuthenticated())
        return next();
    // if they aren't redirect them to the home page
    res.redirect('/');
}