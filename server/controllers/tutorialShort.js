var User = require('../models/user');

function updateShort(req, res) {

    User.findById(req.user.id, function (err, user) {
        if (err) 
            console.log(err)

        if (user) {
            user.tutorial.short = req.body.params.state;
            user.markModified('tutorial');
            user.save();
        } else {
            console.log('User not found');
        }
    });
    res.send('Updated tutorial.short');
}

module.exports = updateShort;