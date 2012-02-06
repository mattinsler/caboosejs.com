module.exports = {
  highlight_start: (language) ->
    '<pre class="highlight github" data-language="' + language + '">'
  highlight_end: ->
    '<%- highlight_end() %>'
}
