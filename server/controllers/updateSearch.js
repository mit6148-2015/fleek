var User = require('../models/user');

function updateSearch(req, res) {

    User.findById(req.user.id, function (err, user) {
        if (err) 
            console.log(err)

        if (user) {
            user.tutorial.search = req.body.params.state;
            user.markModified('tutorial');
            user.save();
        } else {
            console.log('User not found');
        }
    });
    res.send('Updated tutorial.search');
}

module.exports = updateSearch;