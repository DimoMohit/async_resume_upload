class LoginController < ApplicationController
	def index
	end
	def create
		respond_to do |format|
		    if remotipart_submitted? 
		    	@resume = Resume.new
		    	pref =  Time.now.to_i
				if(FileUtils.mkdir_p("public/resume/#{pref}").length)
				    File.open(Rails.root.join('public','resume',"#{pref}", params[:upload][:resume].original_filename), 'wb') do |file|
						  file.write(params[:upload][:resume].read)
					end
			    	@resume.first_name = params[:upload][:first_name]
			    	@resume.last_name = params[:upload][:last_name]
			    	@resume.image_url = "/resume/#{pref}/#{params[:upload][:resume].original_filename}"
					puts params[:upload][:first_name]
					@resume.save
					format.js
				end
			end
		end
	end
	def view
		respos_to do |format|
			resumeList = Resume.all
		end
	end
end