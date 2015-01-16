json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :phone
  json.url friend_url(friend, format: :json)
end
