Rails.application.routes.draw do
    root to: 'home#index'
  post 'home/initial_json'
  
  post "home/generate_resume_display"
  get "home/display_resume"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
