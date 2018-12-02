class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token

	#main root page
	def index
		
	 end
	 
	 #empty json file for format 
	 def initial_json
		send_file(Rails.root+'public/empty_resume.json', disposition: 'attachment')
	end

	#parse the uploaded resume & store in database
	def generate_resume_display

		return if params[:resume].blank?
		@attachment = Attachment.new
		@attachment.uploaded_file = params[:resume]
		if @attachment.save	
		#@@result1= JSON.parse(@attachment.data)
		@final_result = JSON.parse(@attachment.data)
		end
	end
	
	def filled_json
		send_file(Rails.root+'public/sample_filled.json', disposition: 'attachment')
	end
	
 
end
