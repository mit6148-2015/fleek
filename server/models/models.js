var mongoose = require('mongoose');

// Define a schema: this gives us a structure for our data
var photoSchema = mongoose.Schema({
  caption: String,
  url: String
});

// For more complex logic, methods go here
// e.g. photoSchema.methods.methodName = function()...
// or photoSchema.statics.methodName = function()...

// We compile the schema into a model, which is actually a class we can do things on.
var Photo = mongoose.model('Photo', photoSchema);

var checkLength = function(s) {
  return s.length > 0;
};

// Validators for our model. When we save or modify our model, these validators
// get run. If they return false, an error happens.
Photo.schema.path('caption').validate(checkLength, "Caption cannot be empty");
Photo.schema.path('url').validate(checkLength, "URL cannot be empty");

exports.Photo = Photo;