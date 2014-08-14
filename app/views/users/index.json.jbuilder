json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :username, :password, :email, :role, :stars, :registered, :birthdate, :profile, :picture, :additional
  json.url user_url(user, format: :json)
end
