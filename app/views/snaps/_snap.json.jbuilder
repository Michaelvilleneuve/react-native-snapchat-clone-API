json.extract! snap, :id, :viewed
json.created_at snap.created_at.strftime('%d/%m/%Y à %H:%M')
json.url snap_url(snap, format: :json)
json.user do
	json.image "https://gravatar.com/avatar/#{Digest::MD5::hexdigest(snap.user.email).downcase}.png?s=#{64}&d=identicon"
	json.email snap.user.email
end