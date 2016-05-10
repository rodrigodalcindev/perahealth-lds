class APP.Forms
  constructor: ->
    @input  = $('input')

  init: ->
    if @input.length > 0
      @watchTextInput()

  watchTextInput: ->
    _ = this
    _.input.on 'blur', (e) ->
      console.log $.trim($(this).val()).length
      if $.trim($(this).val()).length > 0
        $(this).addClass('is-dirty')
      else
        $(this).removeClass('is-dirty')