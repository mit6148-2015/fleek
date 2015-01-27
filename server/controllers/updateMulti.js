var User = require('../models/user');

function updateMulti(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'multi': req.body.params.state}}});
    res.send('Updated tutorial.multi');
}

module.exports = updateMulti;