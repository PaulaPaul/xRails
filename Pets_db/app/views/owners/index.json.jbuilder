json.array!(@owners) do |owner|
  json.extract! owner, :id, :first_name, :last_name
  json.url owner_url(owner, format: :json)
end
