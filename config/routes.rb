Rails.application.routes.draw do
  resources :medications
  resources :bg_tests
  post "register", to: "authentications#register"
  post "login", to: "authentications#login"
end
