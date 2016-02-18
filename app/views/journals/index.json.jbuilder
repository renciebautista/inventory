json.array!(@journals) do |journal|
  json.extract! journal, :id, :location_id, :product_id, :journal_type_id, :qty
  json.url journal_url(journal, format: :json)
end
