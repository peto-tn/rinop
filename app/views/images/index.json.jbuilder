json.array!(@images) do |image|
  json.extract! image, :id, :name, :path, :favorite
  json.url image_url(image, format: :json)
end
