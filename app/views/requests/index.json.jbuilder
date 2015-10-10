json.array!(@requests) do |request|
  json.extract! request, :id, :customer_id, :owner_id, :product_id, :status
  json.url request_url(request, format: :json)
end
