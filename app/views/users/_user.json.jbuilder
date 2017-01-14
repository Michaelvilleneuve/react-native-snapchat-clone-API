json.extract! user, :id, :email, :created_at, :updated_at
json.image "https://gravatar.com/avatar/#{Digest::MD5::hexdigest(user.email).downcase}.png?s=#{64}&d=identicon"
json.url user_url(user, format: :json)