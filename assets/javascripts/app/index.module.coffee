$          = jQuery
Controller = require('controller')

class App extends Controller
  constructor: ->
    super
    @$el.on('remove', '.item', @remove)
    chrome.topSites.get @render

  render: (@sites) =>
    @html @view('sites')(this)
    @$('img').bind('error', -> $(@).trigger('remove'))

  remove: (e) =>
    $(e.currentTarget).remove()

module.exports = App