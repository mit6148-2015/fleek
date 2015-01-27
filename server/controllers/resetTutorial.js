var User = require('../models/user');

function resetTutorial(req, res) {

    User.findById(req.user.id, function (err, user) {
        if (err) 
            console.log(err)

        if (user) {
            user.tutorial.multi = true;
            user.tutorial.int = true;
            user.tutorial.short = true;
            user.tutorial.paginate = true;
            user.tutorial.search = true;
            user.markModified('tutorial');
            user.save();
        } else {
            console.log('User not found');
        }
    });
    res.send('Updated tutorial.int');
}

module.exports = resetTutorial;