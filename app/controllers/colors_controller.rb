class ColorsController < ApplicationController
  before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy]

  dried_options ({
    fields:
      [:name, :hex, :pantone_code, :label],
    presentation:
      [:name, :hex, :pantone_code, :label]
  })

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end


  def by_label
    @colors = Color.where(label: params[:id])
    render json: @colors
  end
end
