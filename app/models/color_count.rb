class ColorCount < ApplicationRecord
	validates :color_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	belongs_to :block, optional: true
	has_many :color_count_price_ranges
  accepts_nested_attributes_for :color_count_price_ranges, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
end
