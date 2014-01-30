json.array!(@addresses) do |address|
  json.extract! address, :country, :state, :city, :street, :zip
  json.url address_url(address, format: :json)
end
