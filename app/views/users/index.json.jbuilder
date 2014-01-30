json.array!(@users) do |user|
  json.extract! user, :first, :last, :email, :login, :password
  json.url user_url(user, format: :json)
end
