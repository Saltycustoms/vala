class Api::V1::SizesController < Api::V1::ApiV1Controller
  def index
    keys = params.keys.collect { |k| k if k.end_with?("id")}.compact
    if keys
      @resources = resource_class.with_deleted.where(build_options(keys))
    else
      @resources = resource_class.all
    end
    render json: @resources.sort_by {|size| Size.sort_array.index(size.name) || 0}
  end

  def show
    render json: @resource || {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = resource_class.with_deleted.find_by(id: params[:id])
    end
end
