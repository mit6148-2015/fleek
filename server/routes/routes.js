var express = require('express');
var path = require('path');
var router = express.Router();

router.get('/', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/views/index.html'));
});

router.get('/public/assets/countries.json', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/assets/countries.json'));
});

// 404 handling
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/views/404.html'));
});

module.exports = router;