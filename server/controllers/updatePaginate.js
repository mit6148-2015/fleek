var User = require('../models/user');

function updatePaginate(req, res) {

    User.findById(req.user.id, function (err, user) {
        if (err) 
            console.log(err)

        if (user) {
            user.tutorial.paginate = req.body.params.state;
            user.markModified('tutorial');
            user.save();
        } else {
            console.log('User not found');
        }
    });
    res.send('Updated tutorial.paginate');
}

module.exports = updatePaginate;