class APP.Forms
  constructor: ->
    @textInput  = $('.b-input.is-text').find('input,textarea')

  init: ->
    if @textInput.length > 0
      @watchTextInput()

  watchTextInput: ->
    _ = this
    _.textInput.on 'blur', (e) ->
      if $.trim($(this).val()).length > 0
        $(this).addClass('is-dirty')
      else
        $(this).removeClass('is-dirty')