Rails.application.routes.draw do
  resources :bg_tests
  resources :medications
  post "register", to: "authentications#register"
  post "login", to: "authentications#login"
  get "users/:id", to: 'users#show'
end
