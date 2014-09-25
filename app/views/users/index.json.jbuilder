json.array!(@users) do |user|
  json.extract! user, :id, :name, :nick, :email, :anon
  json.url user_url(user, format: :json)
end
