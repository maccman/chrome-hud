$          = jQuery
Controller = require('controller')

class Sites extends Controller
  className: 'sites'

  editing: false

  constructor: ->
    super
    @$el.on('click', '.settings', @toggleEdit)
    @$el.on('remove', '.item', @remove)
    @$el.on('click', '.item .remove', -> $(@).trigger('remove'))
    @$el.on('click', '.item', @click)
    chrome.topSites.get @render

  render: (@sites) =>
    @html @view('sites')(this)
    @$('img').bind('error', -> $(@).trigger('remove'))

  remove: (e) =>
    e.preventDefault()
    $(e.currentTarget).remove()

  toggleEdit: =>
    @edit(!@editing)

  edit: (enabled) =>
    @editing = enabled
    @$el.toggleClass('editing', @editing)

  click: (e) =>
    e.preventDefault() if @editing

module.exports = Sites