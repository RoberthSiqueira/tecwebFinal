Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1850953168560405', '83a74ba4eb73388122d658cb5156a75a',
  	scope: 'public_profile', info_fields: 'id,name,link'
end