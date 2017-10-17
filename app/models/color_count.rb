class ColorCount < ApplicationRecord
	belongs_to :block, optional: true
	has_many :color_count_price_ranges
  accepts_nested_attributes_for :color_count_price_ranges, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
end
