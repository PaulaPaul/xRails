json.array!(@stations) do |station|
  json.extract! station, :id, :name
  json.url station_url(station, format: :json)
end
