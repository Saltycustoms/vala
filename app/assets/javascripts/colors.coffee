# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
  $(".color-checkbox").click ->
    checkbox_input = $(this).find('input[type="checkbox"]')
    hex = checkbox_input.data("hex")
    if checkbox_input.is(":checked")
      checkbox_input.prop("checked", false)
      checkbox_input.siblings('span.color-box').html('<i class="fa fa-square" aria-hidden="true" style="color:' + hex + '"></i>')
      checkbox_input.siblings('span.color-name').removeClass("selected")
    else
      checkbox_input.prop("checked", true)
      checkbox_input.siblings('span.color-box').html('<i class="fa fa-check-square" aria-hidden="true" style="color:' + hex + '"></i>')
      checkbox_input.siblings('span.color-name').addClass("selected")

  $('#colorLabel').change ->
    label = $(this).val();
    $.get('/api/v1/colors/' + label + '/by_label', (data) ->
      $("#colorContainer").empty();
      toAppend = ""
      $.each data, (index, value)->
        htmlText = '
          <div class="small-4 medium-3 large-2 column color-checkbox">
              <label for="product_color_ids_'+value.id+'">
                <input type="checkbox" name="product[color_ids][]" id="product_color_ids_'+value.id+'" value="'+value.id+'" class="color-checkbox" data-hex="'+value.hex+'">
                  <span class="color-box"><i class="fa fa-square" aria-hidden="true" style="color: '+value.hex+'"></i></span>
                  <span class="color-name">'+value.name+'</span>
              </label>
          </div>
        '
        toAppend = toAppend.concat(htmlText)
      $("#colorContainer").append(toAppend)

      $(".color-checkbox").click ->
        checkbox_input = $(this).find('input[type="checkbox"]')
        hex = checkbox_input.data("hex")
        if checkbox_input.is(":checked")
          checkbox_input.prop("checked", false)
          checkbox_input.siblings('span.color-box').html('<i class="fa fa-square" aria-hidden="true" style="color:' + hex + '"></i>')
          checkbox_input.siblings('span.color-name').removeClass("selected")
        else
          checkbox_input.prop("checked", true)
          checkbox_input.siblings('span.color-box').html('<i class="fa fa-check-square" aria-hidden="true" style="color:' + hex + '"></i>')
          checkbox_input.siblings('span.color-name').addClass("selected")
    )
