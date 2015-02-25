# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->



  $('#form').on 'change', (e) ->
    render_text()

  $('#size').on 'change', (e) ->
    $('#hideyhole').show()
    $('#price').text($(this).val())

  render_text = ->
    if $('#size').val() == '0' or $('#type').val() == '0'
      hide_all()
      return
    else if $('#type').val() == 'formal'
      if $('#size').val() == '200'
        show_high_touch()
      else
        show_formal()
    else
      show_informal()


  hide_all = ->
    $('#informal').hide()
    $('#formal').hide()
    $('#high-touch').hide()

  show_informal = ->
    hide_all()
    $('#informal').show()

  show_formal = ->
    hide_all()
    $('#formal').show()

  show_high_touch = ->
    hide_all()
    $('#high-touch').show()

  hide_all()
  $('#hideyhole').hide()
