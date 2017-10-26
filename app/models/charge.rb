class Charge < ApplicationRecord
	belongs_to :delivery_method
	belongs_to :product_type, optional: true
  monetize :value_cents, with_model_currency: :currency

  def self.types
  	["Charge::FlatWeight", "Charge::PerKgWeight", "Charge::PerQuantity"]
  end

  def product_type_name
  	if product_type
  		product_type.name
  	end
  end
end
