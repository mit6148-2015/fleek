var User = require('../models/user');

function updatePaginate(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'paginate': req.body.params.state}}});
    res.send('Updated tutorial.paginate');
}

module.exports = updatePaginate;