class Api::V1::ApiV1Controller < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    keys = params.keys.collect { |k| k if k.end_with?("_id")}.compact
    if keys
      @resources = resource_class.where(build_options(keys))
    else
      @resources = resource_class.all
    end
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

    def build_options(keys)
      options = {}
      keys.each do |key|
        options[key.to_sym] = params[key]
      end
      options
    end
end
