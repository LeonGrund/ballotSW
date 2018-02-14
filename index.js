const dotenv = require('dotenv').config();
const express = require('express');
const app = express();
const crypto = require('crypto');
const cookie = require('cookie');
const nonce = require('nonce')();
const querystring = require('querystring');
const request = require('request-promise');

//const apiKey = process.env.SHOPIFY_API_KEY;
//const apiSecret = process.env.SHOPIFY_API_SECRET;
//const scopes = 'read_products';
//const forwardingAddress = "https://24c7d3bc.ngrok.io"; // Replace this with your HTTPS Forwarding address

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(8080, () => {
  console.log('Example app listening on port 8080!');
});
