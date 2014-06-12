json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :departure_date, :arrival_date, :customer_category_id, :seat_category_id, :customer_id
  json.url ticket_url(ticket, format: :json)
end
