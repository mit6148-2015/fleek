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
var tagById = require('../controllers/tagById');
var queryUsers = require('../controllers/queryUsers');
var queryProblems = require('../controllers/queryProblems');
var querySets = require('../controllers/querySets');
var solvedProblem = require('../controllers/solvedProblem');
var attemptedProblem = require('../controllers/attemptedProblem');
var tagProblem = require('../controllers/tagProblem')
var reportProblem = require('../controllers/reportProblem');
var countryStats = require('../controllers/countryStats')



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
router.get('/problem/*', returnIndex);

// view single set
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
router.get('/db/user', auth, userById); // pass user ID as 'id' parameter, responds with user object
router.get('/db/problem', auth, problemById); // pass problem ID as 'id' parameter, responds with problem object
router.get('/db/set', auth, setById); // pass set ID as 'id' parameter, responds with set object
router.get('/db/tag', auth, setById); // pass tag ID as 'id' parameter, responds with tag object

// database querying
router.get('/db/query/users', auth, queryUsers); // check queryUsers.js for I/O
router.get('/db/query/problems', auth, queryProblems); // check queryProblems.js for I/O
router.get('/db/query/sets', auth, querySets); // check querySets.js for I/O



/***** RECEIVING INFORMATION *****/

// stats
router.post('/stats/solved', auth, solvedProblem); // pass problem ID as 'id'
router.post('/stats/attempted', auth, attemptedProblem); // pass problem ID as 'id'
router.get('/stats/bycountry', countryStats); // get country statistics

// tags
router.post('/tag/tagproblem', auth, tagProblem); // pass problem and tag IDs, tags problem

// problem reporting
router.post('/report', auth, reportProblem); // pass problem ID as 'id', responds with same id after storing



/***** ERROR HANDLING *****/

// 404
router.all('*', function (req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});



module.exports = router;
