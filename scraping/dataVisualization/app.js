//var app = require('express')();
var express = require('express');
var app = express();
console.log("stating fleek");
var server = require('http').Server(app);
var path = require('path');

server.listen(3000);

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/network.html');
});

