json.array!(@sites) do |site|
  json.extract! site, :url, :interval
  json.url site_url(site, format: :json)
end
