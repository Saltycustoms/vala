class Api::V1::ColorsController < Api::V1::ApiV1Controller
  def index
    if params[:product_id]
      @product = Product.find(params[:product_id])
      @colors = @product.colors
      render json: @colors
    else
      super
    end
  end

  def create
    if params[:color].present?
      color = Color.new(color_params)
      if color.save
        render json: color
      else
        render json: {errors: color.errors}, status: 422
      end
    end
  end

  private
  def color_params
    params.require(:color).permit(:name, :hex, :pantone_code)
  end
end
