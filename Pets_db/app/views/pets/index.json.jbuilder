json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :animal_type, :breed, :owner_id
  json.url pet_url(pet, format: :json)
end
