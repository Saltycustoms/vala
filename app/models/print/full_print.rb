class Print::FullPrint < Print
  jsonb_accessor :metadata,
    element_id: :string,
    in_width: :string,
    in_height: :string,
    mm_width: :string,
    mm_height: :string,
    px_width: :string,
    px_height: :string
end
