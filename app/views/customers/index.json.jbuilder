json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :passport, :birth_date, :nationality
  json.url customer_url(customer, format: :json)
end
