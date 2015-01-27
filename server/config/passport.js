function configurePassport(passport) {

    var LocalStrategy = require('passport-local').Strategy;
    var User = require('../models/user');


    // serialize user for the session
    passport.serializeUser(function(user, done) {
        done(null, user.id);
    });


    // deserialize user
    passport.deserializeUser(function(id, done) {
        User.findById(id, function(err, user) {
            done(err, user);
        });
    });


    // signup strategy
    passport.use('local-signup', new LocalStrategy({
        usernameField : 'username',
        passwordField : 'password',
        passReqToCallback : true
    },
    function(req, username, password, done) {

        // asynchronous
        // User.findOne wont fire unless data is sent back
        process.nextTick(function() {

            // check if user with given username already exists
            User.findOne({ 'username' :  username }, function(err, user) {

                // return any errors first
                if (err)
                    return done(err);

                // if user already exists
                if (user) {
                    return done(null, false);
                } else {
                    
                    // create new user
                    var newUser = new User();

                    // set user information
                    newUser.username = username;
                    newUser.password = newUser.generateHash(password);
                    newUser.gender = req.body.gender;
                    newUser.country = req.body.country;
                    newUser.stats.rating = 1000;
                    newUser.stats.solvedCount = 0;
                    newUser.stats.solvedProblems = [];
                    newUser.stats.attemptedCount = 0;
                    newUser.stats.attemptedProblems = [];
                    newUser.tutorial.multi = true;
                    newUser.tutorial.int = true;
                    newUser.tutorial.short = true;
                    newUser.tutorial.paginate = true;
                    newUser.tutorial.search = true;

                    // save user
                    newUser.save(function(err) {
                        if (err)
                            throw err;
                        return done(null, newUser);
                    });
                }
            });    
        });
    }));


    // login strategy
    passport.use('local-login', new LocalStrategy({
        usernameField : 'username',
        passwordField : 'password',
        passReqToCallback : true
    },
    function(req, username, password, done) {

        // check if user with given username exists
        User.findOne({ 'username' : username }, function(err, user) {

            // return any errors first
            if (err)
                return done(err);

            // user not found
            if (!user)
                return done(null, false);

            // user found, wrong password
            if (!user.validPassword(password))
                return done(null, false);

            // return successful user
            return done(null, user);
        });
    }));
};

module.exports = configurePassport;