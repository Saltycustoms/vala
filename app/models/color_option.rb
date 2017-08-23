class ColorOption < ApplicationRecord
  acts_as_paranoid
  belongs_to :product
  belongs_to :color
end
