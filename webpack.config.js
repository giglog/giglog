const path = require('path');
const glob = require("glob");
const entries = glob.sync("./app/javascript/packs/entries/**/*.js")

module.exports = {
  entry: entries,
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'public'),
    publicPath: '/',
  },
};
