class APP.Code
  constructor: ->
    @codeToggle     = $('.b-code-toggle')
    @codeHighlight  = $('.b-code-toggle').siblings('.highlight')

  init: ->
    @watchCodeToggle() if @codeToggle.length > 0 && @codeHighlight.length > 0

  watchCodeToggle: ->
    _ = this
    _.codeToggle.on 'click', (e) ->
      $(this).toggleClass 'is-active'
      _.codeHighlight.toggleClass 'is-visible'