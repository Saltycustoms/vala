class Api::V1::ColorOptionsController < Api::V1::ApiV1Controller
  def create
    color_option = ColorOption.new(color_option_params)
    if color_option.save
      render json: color_option
    end
  end

  private
  def color_option_params
    params.require(:color_option).permit(:product_id, :color_id)
  end
end
