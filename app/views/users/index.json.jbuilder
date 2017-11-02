json.array!(@users) do |user|
  json.extract! user, :provider, :uid, :name, :location, :image_url, :url
  json.url user_url(user, format: :json)
end
