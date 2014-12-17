json.array!(@commutes) do |commute|
  json.extract! commute, :id
  json.url commute_url(commute, format: :json)
end
