import 'TrackingHelper'

class ApplicationController extends Controller
  helper TrackingHelper
  helper {
    capitalize_words: (value) ->
      value
      .split(/[ \t\r\n]+/)
      .map (word) ->
        word[0].toUpperCase() + word.slice(1)
      .join(' ')
  }
