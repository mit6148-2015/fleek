var Set = require('../models/set');

function dbListSets(req, res) {
    Set.find({}, function (err, sets) {
        if (err)
            console.log(err);

        var setlist = {};
        if (sets.length > 0) {
            
            addIndex(0);
        } else {
            res.send(setlist);
        }

        function addIndex(index) {
            var set = sets[index];
            var pattern = set.meta.pattern;
            var instance = set.meta.instance;
            var setId = set._id;
            var returnObject = {};
            returnObject['instance'] = instance;
            returnObject['id'] = setId;

            if (pattern in setlist) {
                setlist[pattern].push(returnObject);
            } else {
                setlist[pattern] = [returnObject];
            }

            index++;
            if (index < sets.length) {
                addIndex(index);
            } else {
                res.send(setlist);
            }
        }
    });
};

module.exports = dbListSets;