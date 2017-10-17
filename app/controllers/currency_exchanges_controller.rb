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
    if currency_exchange.from == "MYR" && currency_exchange.to == "SGD"
      Money.add_rate("MYR", "SGD", currency_exchange.rate)
    elsif currency_exchange.from == "SGD" && currency_exchange.to == "MYR"
      Money.add_rate("MYR", "SGD", 1 / currency_exchange.rate)
    else
      Money.add_rate("MYR", "SGD", 1)
    end
    if params[:resource] == "color_count"
      ColorCount.all.each do |color_count|
        color_count.color_count_price_ranges.where(currency: "MYR").each do |myr_price_range|
          color_count.color_count_price_ranges.where(currency: "SGD").each do |sgd_price_range|
            if (myr_price_range.from == sgd_price_range.from) && (myr_price_range.to == sgd_price_range.to)
              sgd_price_range.update(price: myr_price_range.price.exchange_to("SGD"))
            end
          end
        end
      end
    elsif params[:resource] == "product"
      Product.all.each do |product|
        product.price_ranges.where(currency: "MYR").each do |myr_price_range|
          product.price_ranges.where(currency: "SGD").each do |sgd_price_range|
            if (myr_price_range.from_quantity == sgd_price_range.from_quantity) && (myr_price_range.to_quantity == sgd_price_range.to_quantity)
              sgd_price_range.update(price: myr_price_range.price.exchange_to("SGD"))
            end
          end
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
