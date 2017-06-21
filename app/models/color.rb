class Color < ApplicationRecord
  validates :name, presence: true
  validates :hex, presence: true
  has_many :color_options, dependent: :destroy
  has_many :products, through: :color_options
end
