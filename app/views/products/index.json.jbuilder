json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :product_type_id, :permalink
  json.url product_url(product, format: :json)
end
