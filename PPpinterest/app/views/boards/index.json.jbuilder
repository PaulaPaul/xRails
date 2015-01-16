json.array!(@boards) do |board|
  json.extract! board, :id, :name, :about, :user_id
  json.url board_url(board, format: :json)
end
