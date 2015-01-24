var express = require('express');
var router = express.Router();
var passport = require('passport');
var path = require('path');


// database
var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);


// controllers
var auth = require('../controllers/authorize');
var searchProblems = require('../controllers/searchProblems');
var problemById = require('../controllers/problemById');
var returnIndex = require('../controllers/returnIndex');


// landing page
router.get('/', returnIndex);


// signup via Passport
router.post('/signup', passport.authenticate('local-signup'), function(req, res) {
    console.log('Signup successful');
    res.send('Signup successful');
});


// handled client-side
router.get('/signup', returnIndex);


// login via Passport
router.post('/login', passport.authenticate('local-login'), function(req, res) {
    console.log('Login successful');
    res.send('Login successful');
});


// handled client-side
router.get('/login', returnIndex);


// logout via Passport
router.get('/logout', auth, function(req, res) {
    req.logout();
    console.log('Logout successful');
});


// authorization via Passport
router.get('/auth', auth, function(req, res) {
    console.log('Authorization successful');
    res.send(req.user.username);
});


// handled client-side
router.get('/search', returnIndex);
router.get('/search/*', returnIndex);


// to be fixed
router.get('/GETsearch', auth, searchProblems);


// handled client-side
router.get('/problem', returnIndex);
router.get('/problem/*', returnIndex);


// to be fixed
router.get('/GETproblem', auth, problemById);


// provides list of countries for signup
router.get('/public/assets/countries.json', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/assets/countries.json'));
});


// 404 handling
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});

module.exports = router;

