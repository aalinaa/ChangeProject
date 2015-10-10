json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :img, :group, :subgroup
  json.url product_url(product, format: :json)
end
