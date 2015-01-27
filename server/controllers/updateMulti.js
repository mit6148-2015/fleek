var User = require('../models/user');

function updateMulti(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'multi': req.body.params.multi}}});
}

module.exports = updateMulti;