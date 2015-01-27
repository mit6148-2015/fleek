var User = require('../models/user');

function updateShort(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'short': req.body.params.state}}});
    res.send('Updated tutorial.short');
}

module.exports = updateShort;