class DeliveryMethod < ApplicationRecord
	has_many :area_locations
  accepts_nested_attributes_for :area_locations, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :charges
  accepts_nested_attributes_for :charges, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_one :additional_charge
  accepts_nested_attributes_for :additional_charge, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }

  def charge_name
  	if charges.present?
  		"#{charges.take.class.name.split("::").last.titleize} Charge"
  	else
  		"Charge"
  	end
  end
end
