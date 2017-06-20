class Product < ApplicationRecord
  belongs_to :blank
  validates :name, presence: true
  validates :blank_id, presence: true
end
