var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for team model
var sourceSchema = mongoose.Schema({
    name: String,
    url: {type: String, default: ""}
});

// export model
module.exports = mongoose.model('Source', sourceSchema);