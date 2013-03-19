$          = jQuery
Controller = require('controller')
Sites      = require('./sites')

class App extends Controller
  constructor: ->
    super
    @append(@sites = new Sites)

module.exports = App