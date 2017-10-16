class ProductsController < ApplicationController
  before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy]

  dried_options ({
    fields:
      [:name, :blank_id, :currency, :custom_dye, :simple_configurator_product, sizes_attributes: [:id, :name, :_destroy], color_ids: [],
      price_ranges_attributes: [:id, :from_quantity, :to_quantity, :price, :lower_rrp, :higher_rrp, :commission, :_destroy]],
    presentation:
      [:name, :custom_dye, :currency]
  })

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end
end
