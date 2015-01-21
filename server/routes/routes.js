var express = require('express');
var router = express.Router();
var passport = require('passport');
var path = require('path');
var searchProblems = require('../controllers/searchProblems');

// landing page
router.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/index.html'));
});


// signup via Passport
router.post('/signup', passport.authenticate('local-signup'), function(req, res) {
    console.log('Signup successful');
    res.send('Signup successful');
});


// login via Passport
router.post('/login', passport.authenticate('local-login'), function(req, res) {
    console.log('Login successful');
    res.send('Login successful');
});


// logout via Passport
router.get('/logout', function(req, res) {
    req.logout();
    console.log('Logout successful');
    res.send('Logout successful');
});


// authorization via Passport
router.get('/auth',  function(req, res, next){ 
    if (!req.isAuthenticated()) 
        res.send(401); 
    else 
        next(); 
}, function(req, res) {
    console.log('Authorization successful');
    res.send('Authorization successful');
});


// search database
router.get('/search', function (req, res) {
    searchProblems(req, res);
});


// provides list of countries
router.get('/public/assets/countries.json', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/assets/countries.json'));
});


// 404 handling
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});

module.exports = router;
