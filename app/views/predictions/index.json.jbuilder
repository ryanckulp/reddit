json.array!(@predictions) do |prediction|
  json.extract! prediction, :id, :title, :url, :handle
  json.url prediction_url(prediction, format: :json)
end
