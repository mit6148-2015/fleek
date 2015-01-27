var mongoose = require('mongoose');
var bcrypt = require('bcrypt');
var ObjectId = mongoose.Schema.Types.ObjectId;

// define schema for user model
var userSchema = mongoose.Schema({
    username: String,
    password: String,
    gender: String,
    country: String,
    stats: {
        rating: Number,
        solvedCount: Number,
        solvedProblems: [{type: ObjectId, ref: 'Problem'}],
        attemptedCount: Number,
        attemptedProblems: [{type: ObjectId, ref: 'Problem'}]
    },
    tutorial: {
        multi: Boolean,
        int: Boolean,
        short: Boolean,
        paginate: Boolean
    }
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