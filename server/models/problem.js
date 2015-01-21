var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for problem model
var problemSchema = mongoose.Schema({
    meta: {}, // metadata object constructor comes from ./prototypes/problemMeta.js
    source: {
        name: String,
        url: String,
        citation: String
    },
    tags: [{type: ObjectId, ref: 'Tag'}],
    statement: String,
    attachments: [{}],
    response: {} // response object constructor comes from ./prototypes/problemMeta.js
});

// export model
module.exports = mongoose.model('Problem', problemSchema);