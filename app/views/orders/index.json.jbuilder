json.array!(@orders) do |order|
  json.extract! order, :order_date, :catalog_id
  json.url order_url(order, format: :json)
end
