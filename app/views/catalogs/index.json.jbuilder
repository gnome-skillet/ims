json.array!(@catalogs) do |catalog|
  json.extract! catalog, :partnumber, :count, :amount_per_container, :unit, :vendor_id, :material_id
  json.url catalog_url(catalog, format: :json)
end
