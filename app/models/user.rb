class User < ApplicationRecord
	 def self.from_omniauth(auth_hash)
	    user = find_or_initialize_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
	    if user.new_record?
		    user.name = auth_hash['info']['name']
		    user.email = auth_hash['info']['email']
		    user.image_url = auth_hash['info']['image']
		    user.url = auth_hash['info']['urls'][user.provider.capitalize]
		    user.save!
		end
	    user
	end
end
