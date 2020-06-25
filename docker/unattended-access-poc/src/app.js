var ApiMocker = require('apimocker');
var options = {};
var path = require('path');

ApiMocker.createServer(options)
    .setConfigFile(path.join(__dirname, 'config.json'))
    .start();
