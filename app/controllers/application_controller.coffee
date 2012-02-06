import 'TrackingHelper'
import 'SyntaxHighlighterHelper'

class ApplicationController extends Controller
  helper TrackingHelper
  helper SyntaxHighlighterHelper
  helper {
    capitalize_words: (value) ->
      value
      .split(/[ \t\r\n]+/)
      .map (word) ->
        word[0].toUpperCase() + word.slice(1)
      .join(' ')
  }
