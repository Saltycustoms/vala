class Print < ApplicationRecord
  belongs_to :blank, optional: true
  def as_json(*)
    previous = super
    previous[:type] = type
    previous
  end
end
