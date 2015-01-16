json.array!(@petclub_memberships) do |petclub_membership|
  json.extract! petclub_membership, :id, :primary_contact, :pet_name, :petclub_id, :owner_id
  json.url petclub_membership_url(petclub_membership, format: :json)
end
