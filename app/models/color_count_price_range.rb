class ColorCountPriceRange < ApplicationRecord
  belongs_to :color_count, optional: true
  monetize :price_cents, with_model_currency: :currency

end
