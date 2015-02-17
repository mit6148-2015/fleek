/* CURRENTLY BROKEN */

var User = require('../models/user');
var Problem = require('../models/problem');
var Tag = require('../models/tag');

function profileInfo (req, res) {
    var username = req.query.username;

    User.findOne({ 'username' : username }, function (err, user) {
        if (err)
            console.log(err);

        var profileObject = {};
        profileObject['user'] = user;

        var tagsAttempted = [];
        var allTagStats = {};
        var tagDict = {};

        sendObject();
        getTagDict();
        
        function getTagDict() {
            Tag.find({},function (err, tags) {
                if (err)
                    console.log(err);

                doItFor(0);

                function doItFor(index) {
                    var tag = tags[index];

                    tagDict[tag._id] = tag.tagText;
                    allTagStats[tag.tagText] = [0, 0]; // initialize stats, solved/attempted

                    index++;
                    if(index < tags.length) {
                        doItFor(index);
                    } else {
                        addTagStatsForAttemptedProblem(0);
                    }
                }
            });
        }

        function addTagStatsForAttemptedProblem(index) {
            problemId = user.stats.attemptedProblems[index];

            Problem.findById(problemId, function (err, problem) {
                if (err)
                    console.log(err);

                var tagIdsToAdd = problem.tags;
            
                addTag(0);
                function addTag(subindex) {
                    var tagIdToAdd = tagIdsToAdd[subindex];

                    allTagStats[tagDict[tagIdToAdd]][1]++;
                    if (tagsAttempted.indexOf(tagDict[tagIdToAdd]) == -1) {
                        tagsAttempted.push(tagDict[tagIdToAdd]);
                    }

                    subindex++;
                    if (subindex < tagIdsToAdd.length) {
                        addTag(subindex);
                    } else {
                        index++;
                        if (index < user.stats.attemptedProblems.length) {
                            addTagStatsForAttemptedProblem(index);   
                        } else {
                            addTagStatsForSolvedProblem(0);   
                        }
                        
                    }
                }
            });
        }

        function addTagStatsForSolvedProblem(index) {
            problemId = user.stats.solvedProblems[index];

            Problem.findById(problemId, function (err, problem) {
                if (err)
                    console.log(err);

                var tagIdsToAdd = problem.tags;
                addTag(0);
                function addTag(subindex) {
                    var tagIdToAdd = tagIdsToAdd[subindex];

                    allTagStats[tagDict[tagIdToAdd]][0]++;

                    subindex++;
                    if (subindex < tagIdsToAdd.length) {
                        addTag(subindex);
                    } else {
                        index++;
                        if (index < user.stats.solvedProblems.length) {
                            addTagStatsForSolvedProblem(index);   
                        } else {
                            profileObject['allTagStats'] = allTagStats;
                            profileObject['tagsAttempted'] = tagsAttempted;
                            sendObject();   
                        }
                        
                    }
                }
            });
        }

        function sendObject() {
            console.log(profileObject);
            res.send(profileObject);
        }
    });    
}

module.exports = profileInfo;