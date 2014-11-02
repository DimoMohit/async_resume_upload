require 'file_size_validator'
class Resume < ActiveRecord::Base
	before_save :image_upload
	mount_uploader :resume, ResumeImageUploader
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :resume, presence: true,
		:file_size => { 
	      :maximum => 5.megabytes.to_i 
	    }

	def image_upload
 
	end
end
