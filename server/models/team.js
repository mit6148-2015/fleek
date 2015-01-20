var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for team model
var teamSchema = mongoose.Schema({
    name: String,
    memberIds: [{type: ObjectId, ref: 'User'}]
});

// export model
module.exports = mongoose.model('Team', teamSchema);