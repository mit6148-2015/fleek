var User = require('../models/user');

function updateInt(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'int': req.body.params.state}}});
    res.send('Updated tutorial.int');
}

module.exports = updateInt;