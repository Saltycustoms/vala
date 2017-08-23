class Print < ApplicationRecord
  acts_as_paranoid
  belongs_to :blank, optional: true
  def as_json(*)
    previous = super
    previous[:type] = type
    previous
  end
end
