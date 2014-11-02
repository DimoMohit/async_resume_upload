class LoginController < ApplicationController
	def index
	end
	def create
		begin
			respond_to do |format|
			    if remotipart_submitted? 
					begin
				    	first_name = params[:upload][:first_name]
				    	last_name = params[:upload][:last_name]
						puts params[:upload][:first_name]
						@resume=Resume.create!( :first_name=>first_name,
							:last_name=>last_name,
							:profile_pic=>params[:upload][:profile_pic],
							:resume => params[:upload][:resume])
					rescue Exception=>e
						@error=e
					end
					format.js
				end
			end
		rescue
			@error="Not Valid Format"
		end
	end
	def view
		respos_to do |format|
			resumeList = Resume.all
		end
	end
end