json.array!(@series) do |series|
  json.extract! series, :id, :title, :text
  json.url series_url(series, format: :json)
end
