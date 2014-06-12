json.array!(@airplanes) do |airplane|
  json.extract! airplane, :id, :model, :capacity
  json.url airplane_url(airplane, format: :json)
end
