json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :origin_city_id, :destiny_city_id, :departure_time, :arrival_time, :airplane_id
  json.url itinerary_url(itinerary, format: :json)
end
