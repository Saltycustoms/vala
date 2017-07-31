class Property < ApplicationRecord
  belongs_to :blank, optional: true
  enum prop_type: {
    binding_collar: 0,
    backtape: 1,
    # sleeve_folded_woven_tag: 2,
    # folded_woven_tag: 3,
    binding_sleeve: 4,
    double_needle_stitch: 5,
    # patch_woven_tag: 6,
    pocket: 7
  }
  enum method: {
    substitution: 0,
    patching: 1,
  }
  validates :prop_type, presence: true
  validates :name, presence: true
  jsonb_accessor :metadata,
    element_id: :string,
    back_element_id: :string
  # validates :element_id, presence: true
end
