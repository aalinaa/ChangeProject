json.array!(@feetbacks) do |feetback|
  json.extract! feetback, :id, :text, :user_id, :mark
  json.url feetback_url(feetback, format: :json)
end
