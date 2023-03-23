Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #user routes
  #http '/route', to: 'controller#action'
  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  get 'user/login/check', to: 'users#check_login_status'
  delete 'users/logout', to: 'users#logout'
  get '/', to: 'users#index'

  #todos
  post '/todos', to: 'todos#create'
  patch '/todos/:id', to: 'todos#update'

  
end
