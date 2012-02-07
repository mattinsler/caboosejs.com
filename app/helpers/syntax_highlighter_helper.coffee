exports.highlight_start = (language, filename) ->
  (if filename? then "<h4>#{filename}</h4>" else '') +
  '<pre class="highlight github" data-language="' + language + '">'

exports.highlight_end = ->
    '</pre>'
