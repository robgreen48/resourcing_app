json.array!(@client_fees) do |client_fee|
  json.extract! client_fee, :fee, :client_id, :month
  json.url client_fee_url(client_fee, format: :json)
end