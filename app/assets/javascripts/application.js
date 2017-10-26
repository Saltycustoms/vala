// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery_nested_form
//= require turbolinks
//= require_tree .
//= require scripts/toolkit
//= require jssha256.js

$(document).on('turbolinks:load', function() {
	$(document).on('nested:fieldAdded:color_count_price_ranges', function(event){
		var selected_currency = $("#selected_currency").val()
		$(event.target).find('.currency-select').val(selected_currency)
	})

	$(document).on('nested:fieldAdded:price_ranges', function(event){
		var selected_currency = $("#selected_currency").val()
		$(event.target).find('.currency-select').val(selected_currency)
	})

	$(document).on('nested:fieldAdded:charges', function(event){
		var selected_currency = $("#selected_currency").val()
		var selected_area = $("#selected_area").val()
		var selected_type = $("#selected_type").val()
		var selected_product_type = $("#selected_product_type").val()
		$(event.target).find('.currency-select').val(selected_currency)
		$(event.target).find('.area-select').val(selected_area)
		$(event.target).find('.type-input').val(selected_type)
		$(event.target).find('.product-type-select').val(selected_product_type)
	})
});
