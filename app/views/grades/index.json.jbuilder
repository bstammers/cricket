json.array!(@grades) do |grade|
  json.extract! grade, :id, :name, :captain
  json.url grade_url(grade, format: :json)
end
