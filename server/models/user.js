var mongoose = require('mongoose');
var bcrypt = require('bcrypt');

// define schema for user model
var userSchema = mongoose.Schema({
    username: String,
    password: String,
    gender: String,
    country: String
    // will add: list of problems attempted
});

// generating a hash
userSchema.methods.generateHash = function(password) {
    return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
};

// checking if password is valid
userSchema.methods.validPassword = function(password) {
    return bcrypt.compareSync(password, this.password);
};

// export model
module.exports = mongoose.model('User', userSchema);