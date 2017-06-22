class Api::V1::ApiV1Controller < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @resources = resource_class.all
    render json: @resources
  end

  def show
    render json: @resource || {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = resource_class.find_by(id: params[:id])
    end

    def resource_class
      self.controller_name.camelize.singularize.safe_constantize
    end
end
