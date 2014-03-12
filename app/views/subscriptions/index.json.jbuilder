json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :username, :series_id
  json.url subscription_url(subscription, format: :json)
end
