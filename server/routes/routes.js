var express = require('express');
var router = express.Router();
var path = require('path');
var passport = require('passport');

// landing page
router.get('/', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/views/index.html'));
});

// login via Passport
router.post('/login',
    passport.authenticate('local', { successRedirect: '/', 
                                     failureRedirect: '/login', 
                                     failureFlash: true })
);

// provides list of countries
router.get('/public/assets/countries.json', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/assets/countries.json'));
});

// 404 handling
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/views/404.html'));
});

module.exports = router;