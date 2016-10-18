var Elm = require('../elm/Main');
import Bootstrap from 'bootstrap/dist/css/bootstrap.css';
require('../css/style.scss');
var container = document.getElementById('container');
if(container) { Elm.Main.embed(container); }
