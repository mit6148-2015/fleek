var Set = require('../models/set');

function listSets (req, res) {
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

            if (pattern in setlist) {
                setlist[pattern].push({instance : setId});
            } else {
                setlist[pattern] = [{instance : setId}];
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

module.exports = listSets;