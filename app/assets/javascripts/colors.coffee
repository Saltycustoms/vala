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
