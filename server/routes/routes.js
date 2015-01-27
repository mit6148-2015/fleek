var express = require('express');
var router = express.Router();
var passport = require('passport');
var path = require('path');

// DATABASE
var mongoose = require('mongoose');
var dbConfig = require('../config/database');
mongoose.connect(dbConfig.uri);

// CONTROLLERS
// general
var returnIndex = require('../controllers/returnIndex');
var auth = require('../controllers/auth');
var reportProblem = require('../controllers/reportProblem');
var tagProblem = require('../controllers/tagProblem')
// db retrieval
var userById = require('../controllers/userById');
var currentUser = require('../controllers/currentUser');
var problemById = require('../controllers/problemById');
var setById = require('../controllers/setById');
var setProblems = require('../controllers/setProblems');
var tagById = require('../controllers/tagById');
// db query
var queryUsers = require('../controllers/queryUsers');
var queryProblems = require('../controllers/queryProblems');
var querySets = require('../controllers/querySets');
// db lists
var listTags = require('../controllers/listTags');
var listSets = require('../controllers/listSets');
// tutorial
var tutorialStatus = require('../controllers/tutorialStatus');
var updateMulti = require('../controllers/updateMulti');
var updateInt = require('../controllers/updateInt');
var updateShort = require('../controllers/updateShort');
var updatePaginate = require('../controllers/updatePaginate');
// stats
var correctAttempt = require('../controllers/correctAttempt');
var incorrectAttempt = require('../controllers/incorrectAttempt');
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
router.get('/db/user', auth, userById); // pass user ID as 'id' parameter, responds with user object
router.get('/db/curuser', auth, currentUser); // responds with current user object
router.get('/db/problem', auth, problemById); // pass problem ID as 'id' parameter, responds with problem object
router.get('/db/set', auth, setById); // pass set ID as 'id' parameter, responds with set object
router.get('/db/setproblems', auth, setProblems); // pass set ID as 'id' parameter, responds with list of problems
router.get('/db/tag', auth, tagById); // pass tag ID as 'id' parameter, responds with tag object

// database querying
router.get('/db/query/users', auth, queryUsers); // check queryUsers.js for I/O
router.get('/db/query/problems', auth, queryProblems); // check queryProblems.js for I/O
router.get('/db/query/sets', auth, querySets); // check querySets.js for I/O

// database lists
router.get('/db/list/tags', auth, listTags); // gets list of tags
router.get('/db/list/sets', auth, listSets); // gets list of sets

// database network support
// router.get('/db/network/??', auth, ??);



/***** RECEIVING INFORMATION *****/

// tutorial
router.get('/tutorial/status', auth, tutorialStatus); // get user tutorial booleans
router.post('/tutorial/multi', auth, updateMulti); // pass new value of multi as 'multi' boolean parameter
router.post('/tutorial/int', auth, updateInt); // pass new value of int as 'int' boolean parameter
router.post('/tutorial/short', auth, updateShort); // pass new value of short as 'short' boolean parameter
router.post('/tutorial/paginate', auth, updatePaginate); // pass new value of paginate as 'paginate' boolean parameter
router.post('/tutorial/search', auth, updateSearch); // pass new value of search as 'serach' boolean parameter

// stats
router.post('/stats/correct', auth, correctAttempt); // pass problem ID as 'id'
router.post('/stats/incorrect', auth, incorrectAttempt); // pass problem ID as 'id'
router.get('/stats/bycountry', countryStats); // get country statistics

// tags
router.post('/tagproblem', auth, tagProblem); // pass problem and tag IDs, tags problem

// problem reporting
router.post('/report', auth, reportProblem); // pass problem ID as 'id', responds with same id after storing



/***** ERROR HANDLING *****/

// 404
router.all('*', function (req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});



module.exports = router;
