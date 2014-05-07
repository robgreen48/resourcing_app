json.array!(@planned_hours) do |planned_hour|
  json.extract! planned_hour, :number, :client_id, :user_id, :month
  json.url planned_hour_url(planned_hour, format: :json)
end