class Blank < ApplicationRecord
  has_many :sides, dependent: :destroy
  has_many :properties
  has_many :prints
  accepts_nested_attributes_for :sides, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  validates :name, presence: true
  validates :brand, presence: true
end
