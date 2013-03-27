$          = jQuery
Controller = require('controller')
Sites      = require('./sites')
Components = require('./components')

class App extends Controller
  constructor: ->
    super
    @append(@sites = new Sites)
    @append(@components = new Components)

module.exports = App