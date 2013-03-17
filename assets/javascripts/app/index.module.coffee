$          = jQuery
Controller = require('controller')

class App extends Controller
  constructor: ->
    super
    chrome.topSites.get @render

  render: (@sites) =>
    @html @view('sites')(this)

module.exports = App