class ColorCount < ApplicationRecord
  belongs_to :price_range
  monetize :price_cents, with_model_currency: :currency, numericality: { greater_than: 0 }

end