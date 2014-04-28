json.array!(@users) do |user|
  json.extract! user, :name, :email, :team, :speciality, :normal_hours, :admin, :line_manager
  json.url user_url(user, format: :json)
end