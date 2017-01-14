json.extract! snap, :id
json.created_at snap.created_at.strftime('%d/%m/%Y à %I:%M')
json.user do
	json.image "https://gravatar.com/avatar/#{Digest::MD5::hexdigest(snap.user.email).downcase}.png?s=#{64}&d=identicon"
	json.email snap.user.email
end
json.url snap_url(snap, format: :json)