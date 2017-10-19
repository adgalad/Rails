json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :thumbnail #:date, :images,
  json.url product_url(product, format: :json)
end
