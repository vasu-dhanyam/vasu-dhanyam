json.array!(@produits) do |produit|
  json.extract! produit, :id, :name, :quantity, :measure, :price, :status, :available
  json.url produit_url(produit, format: :json)
end
