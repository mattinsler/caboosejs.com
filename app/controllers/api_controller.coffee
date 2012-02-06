import 'ApplicationController'

pygments = require 'pygments'

class ApiController extends ApplicationController
  highlight_syntax: ->
    @body.code = @body.code.replace(/[ \t\r\n]+$/, '')
    pygments.colorize @body.code, @body.language, 'html', (html) =>
      @render {html: html}, {layout: false}
