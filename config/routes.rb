Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #user routes
  #http '/route', to: 'controller#action'
  post '/users', to: 'users#register'
  post '/user/login', to: 'users#login'
  get 'user/login/check', to: 'users#check_login_status'
  delete 'user/logout', to: 'users#logout'
  get '/', to: 'users#index'
end
