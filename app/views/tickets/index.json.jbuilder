json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :customer_category_id, :seat_category_id, :customer_id, :price
  json.url ticket_url(ticket, format: :json)
end
