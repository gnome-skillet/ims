json.array!(@cabinets) do |cabinet|
  json.extract! cabinet, :number, :temperature, :Room_id
  json.url cabinet_url(cabinet, format: :json)
end
