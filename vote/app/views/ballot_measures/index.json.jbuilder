json.array!(@ballot_measures) do |ballot_measure|
  json.extract! ballot_measure, :id, :number, :title, :funding
  json.url ballot_measure_url(ballot_measure, format: :json)
end
