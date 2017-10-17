class Block < ApplicationRecord
  belongs_to :print_method, optional: true
  has_many :color_counts
  accepts_nested_attributes_for :color_counts, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }

  def display_name
  	"#{print_method.name} #{name}"
  end
end
