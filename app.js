var express = require('express');
var app = express();
var port = process.env.PORT || 5000;
var fs = require('fs');
var morgan = require('morgan');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var mongoose = require('mongoose');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var session = require('express-session');
var configDB = require('./server/config/database.js');
var routes = require('./server/routes/routes');

// set root directory
process.env.PWD = process.cwd();

// log requests to console
app.use(morgan('dev'));

// set public folder
app.use(express.static(process.env.PWD + '/public'));

// set view engine as simple html reader
app.set('view engine', 'html');
app.engine('html', function(path, options, cb) {
    fs.readFile(path, 'utf-8', cb);
});

// POST request body parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// cookies for persistent login
app.use(cookieParser());

// connect to database
mongoose.connect(configDB.uri);

// configure Passport
require('./server/config/passport')(passport); // pass passport for configuration
app.use(session({ secret: 'fleeksesh',
                  saveUninitialized: true,
                  resave: true}));
app.use(passport.initialize());
app.use(passport.session());

// add routes
app.use('/', routes);

// general error handler
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
});

// set port, listen and log 
app.listen(port, function() {
    console.log("browsing on fleek at localhost:" + port);
});

module.exports = app;