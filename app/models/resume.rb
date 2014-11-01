class Resume < ActiveRecord::Base
	before_save :image_upload

	def image_upload
		
	end
end
