class DeliveryMethodStepsController < ApplicationController
	include Wicked::Wizard
  before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy, :show]
  steps :add_locations_and_area, :select_charge, :add_charges, :additional_charge

  def show
  	case step
  		when :add_locations_and_area
  		when :select_charge
  			return redirect_to next_wizard_path(delivery_method_id: @delivery_method.id) if @delivery_method.charges.present?
  		when :add_charges
  			@type = @delivery_method.charges.take&.type || (Charge.types.include?(params[:type]) ? params[:type] : nil)
  			return redirect_to previous_wizard_path(delivery_method_id: @delivery_method.id) unless @type
  		when :additional_charge
  			@delivery_method.build_additional_charge if @delivery_method.additional_charge.blank?
  	end
  	render_wizard
  end

  def update
  	case step
  		when :add_locations_and_area
  			@delivery_method.update(resource_params)
  		when :select_charge
  			case params[:commit]
  			when "Flat Weight Charge"
  				type = "Charge::FlatWeight"
  			when "Per Kg Weight Charge"
  				type = "Charge::PerKgWeight"
  			when "Per Quantity Charge"
  				type = "Charge::PerQuantity"
  			end
  			redirect_to next_wizard_path(delivery_method_id: @delivery_method.id, type: type)
  			return
  		when :add_charges
  			@delivery_method.update(resource_params)
  		when :additional_charge
  			@delivery_method.update(resource_params)
  			return redirect_to delivery_method_path(@delivery_method)
  	end
  	render_wizard @delivery_method, {}, delivery_method_id: @delivery_method.id
  end

  def authorize_user
    if !current_user.has_any_role? :admin, :procurement, :director
      redirect_to request.referrer ? request.referrer : root_path, notice: "You are not authorized."
    end
  end

  private
  def set_resource
  	@delivery_method = DeliveryMethod.find_by(id: params[:delivery_method_id])
  	unless @delivery_method
  		redirect_to root_path
  	end
  end

  def resource_params
  	if params[:delivery_method].present?
  		params.require(:delivery_method).permit(:name, area_locations_attributes: [:id, :area, :location, :_destroy], 
  		charges_attributes: [:id, :from, :to, :value, :area, :currency, :delivery_method_id, :product_type_id, :type, :_destroy],
  		additional_charge_attributes: [:id, :surchage, :buffer, :enable])
  	else
  		{}
  	end
  end
end
