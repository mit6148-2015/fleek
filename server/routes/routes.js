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
var profileInfo = require('../controllers/profileInfo');
// db
var dbUser = require('../controllers/dbUser');
var dbCurrentUser = require('../controllers/dbCurrentUser');
var dbProblem = require('../controllers/dbProblem');
var dbSet = require('../controllers/dbSet');
var dbSetProblems = require('../controllers/dbSetProblems');
var dbTag = require('../controllers/dbTag');
// db/query
var dbQueryUsers = require('../controllers/dbQueryUsers');
var dbQueryProblems = require('../controllers/dbQueryProblems');
var dbQuerySets = require('../controllers/dbQuerySets');
// db/list
var dbListTags = require('../controllers/dbListTags');
var dbListSets = require('../controllers/dbListSets');
// tutorial
var tutorialStatus = require('../controllers/tutorialStatus');
var tutorialReset = require('../controllers/tutorialReset');
var tutorialMulti = require('../controllers/tutorialMulti');
var tutorialInt = require('../controllers/tutorialInt');
var tutorialShort = require('../controllers/tutorialShort');
var tutorialPaginate = require('../controllers/tutorialPaginate');
var tutorialSearch = require('../controllers/tutorialSearch');
// stats
var statsCorrect = require('../controllers/statsCorrect');
var statsIncorrect = require('../controllers/statsIncorrect');
var statsByCountry = require('../controllers/statsByCountry')



/***** PAGES HANDLED CLIENT SIDE *****/
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


/***** DATABASE INFORMATION RETRIEVAL *****/
// database retrieval
router.get('/db/user', auth, dbUser); // pass user ID as 'id' parameter, responds with user object
router.get('/db/currentuser', auth, dbCurrentUser); // responds with current user object
router.get('/db/problem', auth, dbProblem); // pass problem ID as 'id' parameter, responds with problem object
router.get('/db/set', auth, dbSet); // pass set ID as 'id' parameter, responds with set object
router.get('/db/setproblems', auth, dbSetProblems); // pass set ID as 'id' parameter, responds with list of problems
router.get('/db/tag', auth, dbTag); // pass tag ID as 'id' parameter, responds with tag object
// database querying
router.get('/db/query/users', auth, dbQueryUsers); // check queryUsers.js for I/O
router.get('/db/query/problems', auth, dbQueryProblems); // check queryProblems.js for I/O
router.get('/db/query/sets', auth, dbQuerySets); // check querySets.js for I/O
// database lists
router.get('/db/list/tags', auth, dbListTags); // gets list of tags
router.get('/db/list/sets', auth, dbListSets); // gets list of sets


/***** RECEIVING INFORMATION *****/
// tutorial
router.get('/tutorial/status', auth, tutorialStatus); // get user tutorial booleans
router.post('/tutorial/multi', auth, tutorialMulti); // pass new value of multi as 'state' boolean parameter
router.post('/tutorial/int', auth, tutorialInt); // pass new value of int as 'state' boolean parameter
router.post('/tutorial/short', auth, tutorialShort); // pass new value of short as 'state' boolean parameter
router.post('/tutorial/paginate', auth, tutorialPaginate); // pass new value of paginate as 'state' boolean parameter
router.post('/tutorial/search', auth, tutorialSearch); // pass new value of search as 'state' boolean parameter
router.post('/tutorial/reset', auth, tutorialReset); // reset all tutorials
// stats
router.post('/stats/correct', auth, statsCorrect); // pass problem ID as 'id'
router.post('/stats/incorrect', auth, statsIncorrect); // pass problem ID as 'id'
router.get('/stats/bycountry', statsByCountry); // get country statistics
// report problem
router.post('/report', auth, reportProblem); // pass problem ID as 'id', responds with same id after storing


/***** NOT BEING USED? *****/
// database profile information
router.get('/db/profileinfo', auth, profileInfo);
// tags
router.post('/tagproblem', auth, tagProblem); // pass problem and tag IDs, tags problem


/***** ERROR HANDLING *****/
// 404
router.all('*', function (req, res) {
    res.sendFile(path.join(__dirname, '../../public/views/404.html'));
});


module.exports = router;