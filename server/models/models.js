var mongoose = require('mongoose');

var userSchema = mongoose.Schema({
  username: String,
  password: String
});

var User = mongoose.model('User', userSchema);

var checkLength = function(s) {
  return s.length > 0;
};

Photo.schema.path('username').validate(checkLength, "username cannot be empty");
Photo.schema.path('password').validate(checkLength, "password cannot be empty");

exports.Photo = Photo;