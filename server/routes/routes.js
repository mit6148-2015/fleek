var express = require('express');
var path = require('path');
var router = express.Router();

router.get('/', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/views/index.html'));
});

// 404 handling
router.all('*', function(req, res) {
    res.sendFile(path.join(__dirname,'../../public/views/404.html'));
});


router.post('/search',function(req,res){
  var year =req.body.uear;
  var contest =req.body.contest;
  console.log("User name = "+year+", contest is "+contest);
  res.end("yes");
});

module.exports = router;