exports.tracking_footer = ->
  return '' unless Caboose.app.config['google-analytics']?
  """
  <script> // Change UA-XXXXX-X to be your site's ID
    window._gaq = [['_setAccount','#{Caboose.app.config['google-analytics']}'],['_trackPageview'],['_trackPageLoadTime']];
    Modernizr.load({
      load: ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
    });
  </script>
  """
