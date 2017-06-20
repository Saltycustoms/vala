class SidesController < ApplicationController
  before_action :set_side, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def update
    respond_to do |format|
      if @side.update(side_params)
        format.html { redirect_to @blank, notice: 'Side was successfully updated.' }
        format.json { render :show, status: :ok, location: @side }
      else
        format.html { render :edit }
        format.json { render json: @side.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side
      @side = Side.find(params[:id])
      @blank = @side.blank
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_params
      params.require(:side).permit(:name, properties_attributes: [:id, :prop_type, :name, :element_id])
    end
end
