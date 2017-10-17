class ColorCountPriceRange < ApplicationRecord
	validates :from, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :to, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  belongs_to :color_count, optional: true
  monetize :price_cents, with_model_currency: :currency
end
