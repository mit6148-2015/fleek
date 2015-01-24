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


// important paths
var pathToIndex = path.join(__dirname, '../../public/views/index.html')


// landing page
router.get('/', function(req, res) {
    res.sendFile(pathToIndex);
});


// signup via Passport
router.post('/signup', passport.authenticate('local-signup'), function(req, res) {
    console.log('Signup successful');
    res.send('Signup successful');
});


// display signup page (handled client side)
router.get('/signup',function(req, res) {
    res.sendFile(pathToIndex);
});


// login via Passport
router.post('/login', passport.authenticate('local-login'), function(req, res) {
    console.log('Login successful');
    res.send('Login successful');
    res.sendFile(pathToIndex);
});


// display login page (handled client side)
router.get('/login',function(req, res) {
    res.sendFile(pathToIndex);
});


// logout via Passport
router.get('/logout', function(req, res) {
    req.logout();
    console.log('Logout successful');
    res.send('Logout successful');
    res.sendFile(pathToIndex);
});


// authorization via Passport
router.get('/auth', auth, function(req, res) {
    console.log('Authorization successful');
    res.send('Authorization successful');
});


// search database
router.get('/search', auth, searchProblems, function(req, res) {
    res.sendFile(pathToIndex);
});


// get problem by pid
router.get('/problem', auth, problemById, function(req, res) {
    res.sendFile(pathToIndex);
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

