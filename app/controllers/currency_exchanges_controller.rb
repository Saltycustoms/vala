class CurrencyExchangesController < ApplicationController
	before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy, :update_color_count_prices]

  dried_options ({
    fields:
      [:from, :to, :rate],
    presentation:
      [:from, :to, :rate]
  })

  def update_prices
    currency_exchange = CurrencyExchange.find(params[:id])
    Money.add_rate(currency_exchange.from, currency_exchange.to, currency_exchange.rate)
    if params[:resource] == "color_count"
      ColorCount.all.each do |color_count|
        color_count.color_count_price_ranges.where(currency: currency_exchange.from).each do |from_price_range|
          color_count.color_count_price_ranges.where(from: from_price_range.from, to: from_price_range.to, currency: currency_exchange.to).take&.update(price: from_price_range.price.exchange_to(currency_exchange.to))
        end
      end
    elsif params[:resource] == "product"
      Product.all.each do |product|
        product.price_ranges.where(currency: currency_exchange.from).each do |from_price_range|
          product.price_ranges.where(from_quantity: from_price_range.from_quantity, to_quantity: from_price_range.to_quantity, currency: currency_exchange.to).take&.update(price: from_price_range.price.exchange_to(currency_exchange.to))
        end
      end
    end
  end

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end
end
