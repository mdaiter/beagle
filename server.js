var fs = require("fs");
var host = "127.0.0.1";
var path = require('path');
var http = require('http');
var port = 1337;
var express = require("express");

var app = express();

app.use(express.static(__dirname));

app.all('*', function(req, res){
  res.sendfile('index.html');
});

http.createServer(app).listen(80);
