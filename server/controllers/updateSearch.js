var User = require('../models/user');

function updateSearch(req, res) {
    User.findOneAndUpdate({'username': req.user.username}, {$set: { 'tutorial': {'search': req.body.params.search}}});
    res.send('Updated tutorial.search');
}

module.exports = updateSearch;