var User = require('../models/user');

function tutorialMulti(req, res) {

    User.findById(req.user.id, function (err, user) {
        if (err) 
            console.log(err)

        if (user) {
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