const dotenv = require('dotenv').config();
const express = require('express');
const app = express();
const crypto = require('crypto');
const cookie = require('cookie');
const nonce = require('nonce')();
const querystring = require('querystring');
const request = require('request-promise');

const PORT = parseInt(process.env.PORT) || 8080;
const TEXT = process.env.TEXT || 'Hello World!';
//process.env.TES = require('./test.json');
//console.log('THIS IS A TEST: ', process.env.TES);


/**
 * TODO(developer): Tests Cases
 */
function checkPort() {
  return PORT;
}

function checkText() {
    return TEXT;
}

module.exports = {
  checkPort,
  checkText
};





app.get('/', (req, res) => {
  res.send(TEXT);
});

app.listen(PORT, () => {
  console.log('Example app listening on port: ', PORT);
});

// Basic 404 handler
app.use((req, res) => {
  res.status(404).send('Not Found');
});

// Basic error handler
app.use((err, req, res, next) => {
  /* jshint unused:false */
  console.error(err);
  // If our routes specified a specific response, then send that. Otherwise,
  // send a generic message so as not to leak anything.
  res.status(500).send(err.response || 'Something broke!');
});

process.on('uncaughtException', function(err) {
  console.log('Caught exception: ' + err);
});
