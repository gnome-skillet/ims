json.array!(@shelves) do |shelf|
  json.extract! shelf, :number, :Cabinet_id
  json.url shelf_url(shelf, format: :json)
end
