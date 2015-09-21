json.array!(@texts) do |text|
  json.extract! text, :id, :body, :favorite
  json.url text_url(text, format: :json)
end
