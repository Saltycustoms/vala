class Print::FullPrint < Print
  jsonb_accessor :metadata,
    element_id: :string
end
