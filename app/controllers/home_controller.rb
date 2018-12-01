class HomeController < ApplicationController
  def index
	  
	  @file = File.read(Rails.root+'public/resume.json')
	  @result = JSON.parse(@file)
	  puts @result.inspect
	  
  end
end
