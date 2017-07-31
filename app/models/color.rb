class Color < ApplicationRecord
  validates :name, presence: true, if: :pantone_blank?
  validates :hex, presence: true, if: :pantone_blank?
  has_many :color_options, dependent: :destroy
  has_many :products, through: :color_options

  def pantone_blank?
    self.pantone_code.blank?
  end
end
