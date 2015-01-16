json.array!(@pins) do |pin|
  json.extract! pin, :id, :name, :image, :user_id, :board_id
  json.url pin_url(pin, format: :json)
end
