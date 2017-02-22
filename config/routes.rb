Rails.application.routes.draw do
  resources :bg_tests
  resources :medications
  resources :users
  post "register", to: "authentications#register"
  post "login", to: "authentications#login"
  # get "users/:id", to: 'users#show'
  # put "users/:id", to: 'users#update'
  # delete "users/:id", to: 'users#delete'
end
