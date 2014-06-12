json.array!(@customer_categories) do |customer_category|
  json.extract! customer_category, :id, :name
  json.url customer_category_url(customer_category, format: :json)
end
