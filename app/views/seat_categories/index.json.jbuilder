json.array!(@seat_categories) do |seat_category|
  json.extract! seat_category, :id, :name, :
  json.url seat_category_url(seat_category, format: :json)
end
