json.array!(@health_clubs) do |health_club|
  json.extract! health_club, :id, :name
  json.url health_club_url(health_club, format: :json)
end
