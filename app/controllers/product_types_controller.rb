class ProductTypesController < ApplicationController
	before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy]

  dried_options ({
    fields:
      [:name, :weight],
    presentation:
      [:name, :weight]
  })

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end
end
