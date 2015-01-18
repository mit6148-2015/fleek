var express = require('express');
var path = require('path');
var fs = require('fs');
var router = require(path.join(__dirname, '/server/routes/routes'));

var app = express();

app.use(express.static(__dirname + '/public'));

app.set('views', __dirname + '/public/views')
app.set('view engine', 'html');
app.engine('html', function(path, options, cb) {
    fs.readFile(path, 'utf-8', cb);
});

app.use('/', router)

// general error handler
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
});

// set port, listen and log 
app.set('port', (process.env.PORT || 5000));
app.listen(app.get('port'), function() {
    console.log("browsing on fleek at localhost:" + app.get('port'));
});

module.exports = app;