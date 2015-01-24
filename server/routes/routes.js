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


// landing page
router.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/index.html'));
});


// signup via Passport
router.post('/signup', passport.authenticate('local-signup'), function(req, res) {
    console.log('Signup successful');
    res.send('Signup successful');
});


// display signup page (handled client side)
router.get('/signup',function(req, res) {
    res.sendFile('../../public/views/index.html');
});


// login via Passport
router.post('/login', passport.authenticate('local-login'), function(req, res) {
    console.log('Login successful');
    res.send('Login successful');
    res.sendFile('../../public/views/index.html');
});


// display login page (handled client side)
router.get('/login',function(req, res) {
    res.sendFile('../../public/views/index.html');
});


// logout via Passport
router.get('/logout', function(req, res) {
    req.logout();
    console.log('Logout successful');
    res.send('Logout successful');
    res.sendFile('../../public/views/index.html');
});


// authorization via Passport
router.get('/auth', auth, function(req, res) {
    console.log('Authorization successful');
    res.send('Authorization successful');
});


// search database
router.get('/search', auth, searchProblems, function(req, res) {
    res.sendFile('../../public/views/index.html');
});


// get problem by pid
router.get('/problem', auth, problemById, function(req, res) {
    res.sendFile('../../public/views/index.html');
});


// provides list of countries for signup
router.get('/public/assets/countries.json', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/assets/countries.json'));
});


// 404 handling
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});

module.exports = router;

