// express
const express = require('express');
// request cors
const cors = require('cors');
// body parser
const bodyParser = require('body-parser');
// db api
const apiServer = require('./api');

const serverApp = express();

serverApp.use(bodyParser.json())
serverApp.use(bodyParser.urlencoded({ extended: false }));
serverApp.use(cors());
// use db api
serverApp.use('/api', apiServer);

serverApp.listen(3000);

console.log('start listening,  server port: 3000');