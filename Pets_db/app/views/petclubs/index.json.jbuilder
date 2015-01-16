json.array!(@petclubs) do |petclub|
  json.extract! petclub, :id, :name, :description
  json.url petclub_url(petclub, format: :json)
end
