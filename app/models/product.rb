class Product < ApplicationRecord
  acts_as_paranoid
  belongs_to :product_type, optional: true
  belongs_to :blank, optional: true
  validates :name, presence: true
  validates :currency, presence: true
  has_many :sizes, dependent: :destroy
  accepts_nested_attributes_for :sizes, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :price_ranges, dependent: :destroy
  accepts_nested_attributes_for :price_ranges, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :color_options, dependent: :destroy
  has_many :colors, through: :color_options

  def blank_name
    if blank
      blank.name
    else
      "None"
    end
  end

  def as_json(*)
    previous = super
    previous[:colors] = colors.with_deleted
    previous[:sizes] = sizes.with_deleted
    previous[:price_ranges] = price_ranges.with_deleted
    previous
  end

  def product_type_name
    product_type&.name
  end
end
