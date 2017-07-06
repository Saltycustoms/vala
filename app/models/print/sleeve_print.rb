class Print::SleevePrint < Print
  jsonb_accessor :metadata,
    left_half_element_id: :string,
    right_half_element_id: :string
end
