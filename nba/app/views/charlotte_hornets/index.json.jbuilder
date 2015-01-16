json.array!(@charlotte_hornets) do |charlotte_hornet|
  json.extract! charlotte_hornet, :id, :name, :number, :position, :college
  json.url charlotte_hornet_url(charlotte_hornet, format: :json)
end
