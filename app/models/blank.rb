class Blank < ApplicationRecord
  acts_as_paranoid
  has_many :sides, dependent: :destroy
  accepts_nested_attributes_for :sides, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :properties, dependent: :destroy
  accepts_nested_attributes_for :properties, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :prints, dependent: :destroy
  accepts_nested_attributes_for :sides, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :full_prints, class_name: "Print::FullPrint", dependent: :destroy
  accepts_nested_attributes_for :full_prints, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :sleeve_prints, class_name: "Print::SleevePrint", dependent: :destroy
  accepts_nested_attributes_for :sleeve_prints, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  has_many :woven_label_prints, class_name: "Print::WovenLabel", dependent: :destroy
  accepts_nested_attributes_for :woven_label_prints, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }
  validates :name, presence: true
  validates :brand, presence: true
end
