var express = require('express');
var app = express();

app.set('port', (process.env.PORT || 8000));
app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res) {
    res.sendFile('/public/views/index.html', {root: __dirname })
});

app.listen(app.get('port'), function() {
    console.log("browsing on fleek at localhost:" + app.get('port'));
});
