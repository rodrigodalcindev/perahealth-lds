class APP.Forms
  constructor: ->
    @textInput        = $('.b-input.is-text').find('input,textarea')
    @textInputControl = $('.b-input.is-text').find('.b-input-control')

  init: ->
    if @textInput.length > 0
      @watchTextInput()

    if @textInputControl.length > 0
      @watchInputControl()

  watchTextInput: ->
    _ = this
    _.textInput.on 'focus', (e) ->
      $(this).parent().addClass('has-focus')

    _.textInput.on 'blur', (e) ->
      $(this).parent().removeClass('has-focus')

      if $.trim($(this).val()).length > 0
        $(this).addClass('is-dirty')
      else
        $(this).removeClass('is-dirty')

  watchInputControl: ->
    _ = this
    _.textInputControl.on 'click', (e) ->
      if $(this).hasClass('is-masking')
        inputType = $(this).siblings('input').attr('type')

        if inputType == "password"
          $(this).siblings('input').attr('type','text')
        else if inputType == "text"
          $(this).siblings('input').attr('type','password')