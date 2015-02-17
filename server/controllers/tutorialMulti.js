var User = require('../models/user');

function tutorialMulti(req, res) {

    // find current user
    User.findById(req.user.id, function (err, user) {
        if (err) 
            console.log(err)

        if (user) {

            // update tutorial and save new user information
            user.tutorial.multi = req.body.params.state;
            user.markModified('tutorial');
            user.save();
        } else {
            console.log('User not found');
        }
    });
    res.send('Updated tutorial.multi');
}

module.exports = tutorialMulti;