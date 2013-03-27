$          = jQuery
Controller = require('controller')

class Components extends Controller
  className: 'components'

  constructor: ->
    super
    @render()

  render: (@sites) =>
    @html @view('components')(this)

module.exports = Components