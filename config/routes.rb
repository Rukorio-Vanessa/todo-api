Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #user routes
  #http '/route', to: 'controller#action'
  post '/users', to: 'users#register'

end
