var path = require('path');

module.exports = {
  context: __dirname,
  entry: './app/frontend/javascripts/entry.js',
  module: {
    loaders: [{
      test: /\.elm$/,
      exclude: [/elm-stuff/, /node_modules/],
      loader: 'elm-webpack'
    }]
  },

	resolve: {
    extensions: ['', '.js', '.elm'],
  },

	output: {
		path: path.join(__dirname, 'app', 'assets', 'javascripts'),
		filename: 'bundle.js',
		publicPath: '/assets'
	}
};
