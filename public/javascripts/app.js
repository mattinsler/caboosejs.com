function highlight(element) {
  var text;
  var lang = element.attr('data-language');
  if (lang.substr(0, 4) === 'html' || lang === 'erb') {
    text = element.html().replace(/&lt;/g, '<').replace(/&gt;/g, '>');
  } else {
    text = element.text();
  }
  $.post('/api/highlight-syntax', {code: text, language: element.attr('data-language')}, function(data) {
    var e = $(data);
    e.attr('class', element.attr('class'));
    element.replaceWith(e);
  });
}

$('pre.highlight').each(function(idx, e) {
  highlight($(e));
});
