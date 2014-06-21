json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :passport, :birth_date, :nationality, :email
  json.url customer_url(customer, format: :json)
end
