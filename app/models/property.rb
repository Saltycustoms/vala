class Property < ApplicationRecord
  belongs_to :side
  enum prop_type: [:binding, :woven_tag]
  validates :prop_type, presence: true
  validates :name, presence: true
  validates :element_id, presence: true
end
