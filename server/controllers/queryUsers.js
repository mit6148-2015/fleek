var User = require('../models/user');

function queryUsers (req, res) {

    // res.send(req.query.test);

    User.find().exec(function (err, users) {
        if (err)
            console.log(err);

        res.send(users);
    });
    
};

module.exports = queryUsers;