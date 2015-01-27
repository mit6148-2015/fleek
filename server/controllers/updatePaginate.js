var User = require('../models/user');

function updatePaginate(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'paginate': req.body.params.paginate}}});
}

module.exports = updatePaginate;