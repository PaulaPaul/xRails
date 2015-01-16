json.array!(@ballots) do |ballot|
  json.extract! ballot, :id, :vote, :voter_id, :ballot_measure_id
  json.url ballot_url(ballot, format: :json)
end
