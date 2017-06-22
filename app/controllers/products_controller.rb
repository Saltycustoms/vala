class ProductsController < ResourcesController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # POST /colors
  # POST /colors.json
  def create
    @resource = resource_class.new(resource_params)
    super
  end

  # PATCH/PUT /colors/1
  # PATCH/PUT /colors/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: "#{@resource.class.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:product).permit(:name, :blank_id, sizes_attributes: [:id, :name, :_destroy], color_ids: [],
      price_ranges_attributes: [:id, :from_quantity, :to_quantity, :price_cents, :lower_rrp_cents, :higher_rrp_cents, :commission, :_destroy])
    end
end
