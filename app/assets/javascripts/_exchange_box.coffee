$(document).ready ->
  get_count = () ->
    if $('form').attr('action') == '/exchange'
      $.ajax '/exchange',
        type: 'POST'
        dataType: 'json'
        data: {
                currency: $("#currency").val(),
                currency_destination: $("#currency_destination").val(),
                quantity: $("#quantity").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;

  get_inverse = () ->
    currencyInverse = $('#currency').val()
    currencyInverseDestination = $('#currency_destination').val()

    $('#currency').val(currencyInverseDestination)
    $('#currency_destination').val(currencyInverse)



  $('#quantity').on 'keyup', ->
    get_count()


  $('#change-base').click ->
    get_inverse()
    get_count()

  $('#currency, #currency_destination, #quantity').change ->
    get_count()
