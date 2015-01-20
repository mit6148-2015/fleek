var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for problem model
var problemSchema = mongoose.Schema({
    meta: {}, // tags year, contest, source, type, tags... will come from ./prototypes/problem-meta.js as object or schema
    tagIds: [{type: ObjectId, ref: 'Tag'}],
    statement: String,
    attachments: [String], // asy diagrams? links?
    response: {} // choices, answer, solution... will come from ./prototypes/response.js as object or schema
});

// export model
module.exports = mongoose.model('Problem', problemSchema);