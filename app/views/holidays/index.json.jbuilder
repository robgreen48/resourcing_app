json.array!(@holidays) do |holiday|
  json.extract! holiday, :days_off, :user_id, :month
  json.url holiday_url(holiday, format: :json)
end