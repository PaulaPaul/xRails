json.array!(@voters) do |voter|
  json.extract! voter, :id, :first_name, :last_name, :party, :district
  json.url voter_url(voter, format: :json)
end
