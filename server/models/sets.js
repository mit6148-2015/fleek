var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for set model
var setSchema = mongoose.Schema({
    meta: {}, // source, contest, etc... will come from ./prototypes/set-meta.js as object or schema
    problemIds: [{type: ObjectId, ref: 'Problem'}]
});

// export model
module.exports = mongoose.model('Set', setSchema);