class DeliveryMethodsController < ApplicationController
	before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy]

  dried_options ({
    fields:
      [:name],
    presentation:
      [:name]
  })

  def create
    @resource = resource_class.new(resource_params)
    respond_to do |format|
      if @resource.save
        format.html { redirect_to delivery_method_steps_path(delivery_method_id: @resource.id), notice: "#{@resource.class.name.titleize} was successfully created" }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to delivery_method_steps_path(delivery_method_id: @resource.id), notice: "#{@resource.class.name.titleize} was successfully updated" }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end
end
