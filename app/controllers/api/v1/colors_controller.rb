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
end
