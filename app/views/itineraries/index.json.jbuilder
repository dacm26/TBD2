json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :origin_city_id, :destiny_city_id, :airplane_id, :departure_date, :arrival_date, :departure_time, :arrival_time
  json.url itinerary_url(itinerary, format: :json)
end
