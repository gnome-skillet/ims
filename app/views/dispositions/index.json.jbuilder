json.array!(@dispositions) do |disposition|
  json.extract! disposition, :name, :description
  json.url disposition_url(disposition, format: :json)
end
