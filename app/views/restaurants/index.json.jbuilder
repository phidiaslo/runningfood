json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :about, :subdomain, :slug
  json.url restaurant_url(restaurant, format: :json)
end
