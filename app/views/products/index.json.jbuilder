json.array!(@products) do |product|
  json.extract! product, :id, :price, :currency
  json.url product_url(product, format: :json)
end
