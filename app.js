var express = require('express');
var path = require('path');
var router = require(path.join(__dirname, '/server/routes/routes'));

var app = express();

app.use(express.static(__dirname + '/public'));

app.use('/', router)

// catch 404 and forward to error handler
app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// error handler
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
        message: err.message,
        error: {}
    });
});

// TODO: check if this is good
// set port, listen and log 
app.set('port', (process.env.PORT || 5000));
app.listen(app.get('port'), function() {
    console.log("browsing on fleek at localhost:" + app.get('port'));
});

module.exports = app;