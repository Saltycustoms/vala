class Product < ApplicationRecord
  belongs_to :blank
  validates :name, presence: true
  validates :blank_id, presence: true
  validates :currency, presence: true
  has_many :sizes, dependent: :destroy
  accepts_nested_attributes_for :sizes, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :price_ranges, dependent: :destroy
  accepts_nested_attributes_for :price_ranges, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :color_options, dependent: :destroy
  has_many :colors, through: :color_options
  # validates :colors, presence: true

  def blank_name
    blank.name
  end
end
