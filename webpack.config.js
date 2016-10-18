var path = require('path');

module.exports = {
  context: __dirname,
  entry: './app/frontend/javascripts/entry.js',
  module: {
    loaders: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: 'elm-webpack'
      },

      {
        test: /\.js$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel?presets[]=es2015'
      },

      {
        test: /\.css$/,
        loader: "style-loader!css-loader"
      },

      {
        test: /\.png$/,
        loader: "url-loader?limit=100000"
      },

      {
        test: /\.jpg$/,
        loader: "file-loader"
      },

      {
        test: /\.(woff|woff2)(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url?limit=10000&mimetype=application/font-woff'
      },

      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url?limit=10000&mimetype=application/octet-stream'
      },

      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'file'
      },

      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url?limit=10000&mimetype=image/svg+xml'
      }
    ]
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
