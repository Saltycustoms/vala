class Size < ApplicationRecord
  acts_as_paranoid
  belongs_to :product, optional: true
  validates :name, presence: true
  before_save :upcase_name

  def self.sort_array
    %w(XS S M L XL 2XL 3XL 4XL)
  end

  def upcase_name
    self.name.upcase!
  end
end
