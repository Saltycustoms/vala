class Api::V1::ColorOptionsController < Api::V1::ApiV1Controller
  def index
    keys = params.keys.collect { |k| k if k.end_with?("id")}.compact
    if keys
      @resources = resource_class.with_deleted.where(build_options(keys))
    else
      @resources = resource_class.all
    end
    render json: @resources
  end

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

  def set_resource
    @resource = resource_class.with_deleted.find_by(id: params[:id])
  end
end
