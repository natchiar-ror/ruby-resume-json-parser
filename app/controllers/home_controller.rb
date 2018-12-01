class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	@@result1 = ""
	
  def index
	  
	  #~ @file = File.read(Rails.root+'public/resume1.json')
	  #~ @result = JSON.parse(@file)
	  
	  #~ File.write('sample.docx', @result )
	  
	  # send_file(Rails.root+'public/resume.json', disposition: 'attachment')
 end
 
 def initial_json
	send_file(Rails.root+'public/empty_resume.json', disposition: 'attachment')
end

def generate_resume_display
	
	return if params[:resume].blank?
    @attachment = Attachment.new
    @attachment.uploaded_file = params[:resume]
    if @attachment.save	
	@@result1= JSON.parse(@attachment.data)
	render "index"
    end
	
end

def display_resume
	@final_result = JSON.parse(Attachment.last.data)
end


 
end
