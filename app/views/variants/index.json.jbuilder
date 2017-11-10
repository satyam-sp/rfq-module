json.array!(@variants) do |variant|
  json.extract! variant, :id, :name, :price, :cost, :product_id, :color
  json.url variant_url(variant, format: :json)
end
