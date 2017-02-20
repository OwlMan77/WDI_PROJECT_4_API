Rails.application.routes.draw do
  resources :bg_tests
  resources :medications
  post "api/register", to: "authentications#register"
  post "api/login", to: "authentications#login"
end
