json.array!(@stocks) do |stock|
  json.extract! stock, :id, :location_id, :product_id, :qty
  json.url stock_url(stock, format: :json)
end
