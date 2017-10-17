class BlocksController < ApplicationController
	before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy]

  dried_options ({
    fields:
      [:name, color_counts_attributes: [:id, :color_count, :_destroy, color_count_price_ranges_attributes: [:id, :from, :to, :price, :currency, :_destroy]]],
    presentation:
      [:name]
  })

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end
end
