class PriceRange < ApplicationRecord
  include MoneyRails::ActionViewExtension
  acts_as_paranoid
  has_many :color_counts
  belongs_to :product, optional: true
  validates :from_quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :to_quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :commission, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 1, allow_nil: true}
  # monetize :price_cents, with_model_currency: :currency, numericality: { greater_than_or_equal_to: 0 }
  # monetize :lower_rrp_cents, with_model_currency: :currency, numericality: { greater_than_or_equal_to: 0 }
  # monetize :higher_rrp_cents, with_model_currency: :currency, numericality: { greater_than_or_equal_to: 0 }
  accepts_nested_attributes_for :color_counts, allow_destroy: true

  def currency
    if product
      product.currency
    end
  end

  # def price_amount
  #   humanized_money_with_symbol price
  # end

  def price_amount(color_count)
    humanized_money_with_symbol color_counts.where(color_count: color_count).take.price
  end

  def lower_rrp_amount
    humanized_money_with_symbol lower_rrp
  end

  def higher_rrp_amount
    humanized_money_with_symbol higher_rrp
  end
end
