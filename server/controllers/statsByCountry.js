var User = require('../models/user');

function statsByCountry(req, res) {

    // find all users
    User.find({}, function (err, users) {
        if (err)
            console.log(err);

        // accumulate stats as key-value pairs of countries and number of problems solved
        var stats = {};
        if (users.length > 0) {
            doForIndex(0);
        } else {
            res.send({});
        }

        function doForIndex(index) {

            // get country and number of problems solved for current user
            var country = users[index].country;
            var count = users[index].stats.solvedCount;

            // increment country count by count for current user
            if (country in stats) {
                stats[country] += count;
            } else {
                stats[country] = count;
            }

            // loop until last user
            index++;
            if (index < users.length) {
                doForIndex(index);
            } else {
                res.send(stats); // send stats object
            }
        }
        
    });

}

module.exports = statsByCountry;