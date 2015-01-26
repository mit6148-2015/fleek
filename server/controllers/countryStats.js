var User = require('../models/user');

function countryStats(req, res) {

    User.find({}, function (err, users) {
        if (err)
            console.log(err);

        if (users.length) 
            var stats = {};
            doForIndex(0);

        function doForIndex(index) {
            var country = users[index].country;
            var count = users[index].solvedCount;

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