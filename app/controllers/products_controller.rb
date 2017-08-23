class ProductsController < ApplicationController
  dried_options ({
    fields:
      [:name, :blank_id, :currency, :custom_dye, sizes_attributes: [:id, :name, :_destroy], color_ids: [],
      price_ranges_attributes: [:id, :from_quantity, :to_quantity, :price_cents, :lower_rrp_cents, :higher_rrp_cents, :commission, :_destroy]],
    presentation:
      [:name, :custom_dye, :currency]
  })
end
