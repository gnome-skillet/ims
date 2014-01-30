json.array!(@rooms) do |room|
  json.extract! room, :number, :Address_id
  json.url room_url(room, format: :json)
end
