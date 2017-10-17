class PrintMethod < ApplicationRecord
	validates :name, presence: true
	has_many :blocks
  accepts_nested_attributes_for :blocks, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }

  def block_names
    blocks.collect {|block| block.name}.join(", ")
  end
end
