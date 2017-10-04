class Api::V1::ColorCountsController < Api::V1::ApiV1Controller
  def index
    if params[:price_range_id]
      @price_range = PriceRange.find(params[:price_range_id])
      @color_counts = @price_range.color_counts
      render json: @color_counts
    else
      super
    end
  end

  def create
    if params[:color_count].present?
      color_count = ColorCount.new(color_count_params)
      if color_count.save
        render json: color_count
      else
        render json: {errors: color_count.errors}, status: 422
      end
    end
  end

  def by_label
    @color_counts = ColorCount.where(label: params[:id])
    render json: @color_counts
  end

  private
  def color_count_params
    params.require(:color_count).permit(:price_cents, :color_count, :price_range_id)
  end
end
