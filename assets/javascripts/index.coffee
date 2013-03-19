//= require jquery2
//= require controller.module
//= require jquery.browser
//= require jquery.gfx
//= require_tree ./app
//= require_tree ./views
//= require_self

App        = require('app');
window.app = new App({el: document.body});