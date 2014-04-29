json.array!(@clients) do |client|
  json.extract! client, :name, :email, :team, :account_director
  json.url client_url(client, format: :json)
end