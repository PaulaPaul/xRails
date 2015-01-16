json.array!(@selections) do |selection|
  json.extract! selection, :id, :name
  json.url selection_url(selection, format: :json)
end
