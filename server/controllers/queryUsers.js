var User = require('../models/user');

function queryUsers (req, res) {

    // get conditions
    var queryText = String(req.query.q);
    var genders = req.query.genders;
    if (Object.prototype.toString.call(genders) === "[object String]")
        genders = [genders]; // make sure genders is an array
    var countries = req.query.countries;
    if (Object.prototype.toString.call(countries) === "[object String]")
        countries = [countries]; // make sure countries is an array

    // start query
    var query = User.find();

    // query conditions
    query.where({$text: { $search: queryText }});
    query.where('gender').in(genders);
    query.where('country').in(countries);

    // only return _id, country, gender, and username fields
    query.select('_id country gender username');

    // respond to request with list of found users
    query.exec(function (err, users) {
        if (err)
            console.log(err);

        res.send(users);
    });
    
}

module.exports = queryUsers;