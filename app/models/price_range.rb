class PriceRange < ApplicationRecord
  acts_as_paranoid
  belongs_to :product, optional: true
  validates :from_quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :to_quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :price_cents, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :lower_rrp_cents, numericality: {greater_than_or_equal_to: 1, allow_nil: true}
  validates :higher_rrp_cents, numericality: {greater_than_or_equal_to: 1, allow_nil: true}
  validates :commission, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 1, allow_nil: true}
end
