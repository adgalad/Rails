Rails.application.config.middleware.use OmniAuth::Builder do
	GOOGLE_CLIENT_ID = "930445922286-aec8v8uv2urhl9fopda6o950lk3qa83i.apps.googleusercontent.com"
	GOOGLE_SECRET = "kB0r-3tQtxSodvd0n6X-u-6c"

	FACEBOOK_KEY = "390854754667178"
	FACEBOOK_SECRET = "b5bfe0747a67ff1945cac3dbacc8d85c"

	provider :facebook, FACEBOOK_KEY, FACEBOOK_SECRET, scope: 'public_profile', info_fields: 'id,name,link'

	provider :google_oauth2, GOOGLE_CLIENT_ID, GOOGLE_SECRET,
       	scope: 'profile', 
       	image_aspect_ratio: 'square', 
       	image_size: 48, 
       	access_type: 'online', 
       	name: 'google'
end




