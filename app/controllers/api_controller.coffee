import 'ApplicationController'

pygments = require 'pygments'

class ApiController extends ApplicationController
  highlight_syntax: ->
    @body.code = @body.code.replace(/(^\s+|\s+$)/g, '')
    pygments.colorize @body.code, @body.language, 'html', (html) =>
      @html = html
      @render {layout: false}
