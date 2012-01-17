module.exports = ->
  @route '/', 'home'
  @route "/docs/#{page}", "documentation##{page}" for page in ['overview', 'your-first-app', 'configuration', 'routing', 'controllers', 'views']
  @route "/plugins/#{page}", "plugins##{page}" for page in ['caboose-model', 'caboose-authentication']
