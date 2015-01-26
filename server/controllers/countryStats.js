var User = require('../models/user');

function countryStats(req, res) {

    User.find({}, function (err, users) {
        if (err)
            console.log(err);

        if (users.length > 0) {
            var stats = {};
            doForIndex(0);
        } else {
            res.send({});
        }

        function doForIndex(index) {
            var country = users[index].country;
            var count = users[index].stats.solvedCount;

            if (country in stats) {
                stats[country] += count;
            } else {
                stats[country] = count;
            }

            index++;
            if (index < users.length) {
                doForIndex(index);
            } else {
                res.send(stats);
            }
        }
        
    });

}

module.exports = countryStats;