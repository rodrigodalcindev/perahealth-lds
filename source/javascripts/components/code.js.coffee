class APP.Code
  constructor: ->
    @codeToggle     = $('.b-code-toggle')

  init: ->
    @watchCodeToggle() if @codeToggle.length > 0

  watchCodeToggle: ->
    _ = this
    _.codeToggle.on 'click', (e) ->
      $(this).toggleClass 'is-active'
      $(this).prev('.highlight').toggleClass 'is-visible'