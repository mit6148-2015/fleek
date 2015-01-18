var express = require('express');
var app = express();
var router = require(__dirname + '/server/routes/routes');
var path = require('path');
var fs = require('fs');
var bodyParser = require('body-parser');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

// set public folder
app.use(express.static(__dirname + '/public'));

// set view engine as simple html reader
app.set('view engine', 'html');
app.engine('html', function(path, options, cb) {
    fs.readFile(path, 'utf-8', cb);
});

// POST request body parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// configure Passport
passport.use(new LocalStrategy(
  function(username, password, done) {
    User.findOne({ username: username }, function (err, user) {
      if (err) { return done(err); }
      if (!user) {
        return done(null, false, { message: 'Incorrect username.' });
      }
      if (!user.validPassword(password)) {
        return done(null, false, { message: 'Incorrect password.' });
      }
      return done(null, user);
    });
  }
));

// add routes
app.use('/', router);

// general error handler
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
});

// set port, listen and log 
app.set('port', (process.env.PORT || 5000));
app.listen(app.get('port'), function() {
    console.log("browsing on fleek at localhost:" + app.get('port'));
});

module.exports = app;
