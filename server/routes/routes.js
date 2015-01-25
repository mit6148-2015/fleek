var express = require('express');
var router = express.Router();
var passport = require('passport');
var path = require('path');

// database
var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);

// controllers
var returnIndex = require('../controllers/returnIndex');
var auth = require('../controllers/auth');
var userById = require('../controllers/userById');
var problemById = require('../controllers/problemById');
var setById = require('../controllers/setById');
var queryProblems = require('../controllers/queryProblems');




/***** PAGES (HANDLED CLIENT SIDE) *****/

// landing page
router.get('/', returnIndex);

// signup page
router.get('/signup', returnIndex);

// login page
router.get('/login', returnIndex);

// about page
router.get('/about', returnIndex);

// view profile
router.get('/profile', returnIndex);
router.get('/profile/*', returnIndex);

// view single problem
router.get('/problem', returnIndex);
router.get('/problem/*', returnIndex);

// view single set
router.get('/set', returnIndex);
router.get('/set/*', returnIndex);

// problem search
router.get('/search', returnIndex);
router.get('/search/*', returnIndex);



/***** PASSPORT ENDPOINTS *****/

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
router.get('/logout', auth, function(req, res) {
    req.logout();
    console.log('Logout successful');
    res.send('Logout successful');
});

// authorization via Passport
router.get('/auth', auth, function(req, res) {
    console.log('Authorization successful');
    res.send(req.user.username);
});



/***** DATABASE INTERACTION *****/

// database retrieval
router.get('/db/user', auth, userById); // pass ID as 'id' parameter, responds with user object
router.get('/db/problem', auth, problemById); // pass ID as 'id' parameter, responds with problem object
router.get('/db/set', auth, setById); // pass ID as 'id' parameter, responds with set object

// handles problem querying
router.get('/db/query/problems', auth, queryProblems); // check searchProblems.js for I/O



/***** SERVING STATIC CONTENT *****/

// provides list of countries for signup
router.get('/public/assets/countries.json', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/assets/countries.json'));
});



/***** ERROR HANDLING *****/

// 404
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});



module.exports = router;
