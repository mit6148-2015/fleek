var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for set model
var setSchema = mongoose.Schema({
    meta: {}, // metadata object constructor comes from ./prototypes/setMeta.js
    problems: [{type: ObjectId, ref: 'Problem'}]
});

// export model
module.exports = mongoose.model('Set', setSchema);