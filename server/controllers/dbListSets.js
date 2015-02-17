var Set = require('../models/set');

function dbListSets(req, res) {

    // find all sets
    Set.find({}, function (err, sets) {
        if (err)
            console.log(err);

        // create object to store sets as key-value pairs of patterns and arrays of objects containing set information
        var allSets = {};
        if (sets.length > 0) {
            addIndex(0);
        } else {
            res.send(allSets);
        }

        function addIndex(index) {
            // extract information from set at given index into setObject and pattern
            var set = sets[index];
            var pattern = set.meta.pattern;
            var instance = set.meta.instance;
            var setId = set._id;
            var setObject = {};
            setObject['instance'] = instance;
            setObject['id'] = setId;

            // add set to array whose key is pattern
            if (pattern in allSets) {
                allSets[pattern].push(setObject);
            } else {
                allSets[pattern] = [setObject]; // new array if key doesn't exist yet
            }

            // loop until last set is reached
            index++;
            if (index < sets.length) {
                addIndex(index);
            } else {
                res.send(allSets);
            }
        }
    });
};

module.exports = dbListSets;