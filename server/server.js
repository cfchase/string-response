'use strict';

const http = require('http');

const PORT = parseInt(process.env.PORT || 8080);
const IP = process.env.IP || process.env.OPENSHIFT_NODEJS_IP || "0.0.0.0";
const RESPONSE_STRING = process.env.RESPONSE_STRING || "hello world!";


//create a server object:
http.createServer(function (req, res) {
  console.debug({
    request: {
      url: req.url,
      headers: req.headers,
      body: req.body
    },
    response: RESPONSE_STRING
  });
  res.write(RESPONSE_STRING); //write a response to the client
  res.end(); //end the response
}).listen(PORT, IP); //the server object listens on port 8080