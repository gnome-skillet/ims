json.array!(@materials) do |material|
  json.extract! material, :description, :smn
  json.url material_url(material, format: :json)
end
