import 'ApplicationController'

class HomeController extends ApplicationController
  index: -> @redirect_to '/docs/overview'
