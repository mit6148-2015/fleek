var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for team model
var teamSchema = mongoose.Schema({
    name: String,
    members: [{type: ObjectId, ref: 'User'}]
});

// export model
module.exports = mongoose.model('Team', teamSchema);