var Set = require('../models/set');

function querySets (req, res) {

    // res.send(req.query.test);

    Set.find().exec(function (err, sets) {
        if (err)
            console.log(err);

        res.send(sets);
    });
    
};

module.exports = querySets;