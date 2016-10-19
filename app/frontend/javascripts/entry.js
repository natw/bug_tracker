var Elm = require('../elm/Main');
import Bootstrap from 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap';
require('../css/style.scss');
var container = document.getElementById('container');
if(container) {
  var elmApp = Elm.Main.embed(container);

  elmApp.ports.openModal.subscribe(function(selector) {
    $(selector).modal('show');
  });
  elmApp.ports.closeModal.subscribe(function(selector) {
    $(selector).modal('hide');
  });
}
