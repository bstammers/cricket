json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :address, :suburb, :state
  json.url club_url(club, format: :json)
end
