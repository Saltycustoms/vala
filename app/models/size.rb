class Size < ApplicationRecord
  belongs_to :product, optional: true
  validates :name, presence: true
  before_save :upcase_name

  def self.sort_array
    %w(XS S M L XL XXL XXXL)
  end

  def upcase_name
    self.name.upcase!
  end
end
