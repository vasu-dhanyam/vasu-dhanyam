json.array!(@products) do |product|
  json.extract! product, :id, :name, :quantity, :measure, :price, :status, :available
  json.url product_url(product, format: :json)
end
