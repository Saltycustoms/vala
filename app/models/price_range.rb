class PriceRange < ApplicationRecord
  include MoneyRails::ActionViewExtension
  acts_as_paranoid
  belongs_to :product, optional: true
  validates :from_quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :to_quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :commission, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 1, allow_nil: true}
  # monetize :price_cents, with_model_currency: :currency, numericality: { greater_than_or_equal_to: 0 }
  # monetize :lower_rrp_cents, with_model_currency: :currency, numericality: { greater_than_or_equal_to: 0 }
  # monetize :higher_rrp_cents, with_model_currency: :currency, numericality: { greater_than_or_equal_to: 0 }

  def currency
    if product
      product.currency
    end
  end

  # def price_amount
  #   humanized_money_with_symbol price
  # end

  def lower_rrp_amount
    humanized_money_with_symbol lower_rrp
  end

  def higher_rrp_amount
    humanized_money_with_symbol higher_rrp
  end
end
