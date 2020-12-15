Rails.application.routes.draw do
  resources :list_treatments
  resources :patients
  resources :treatments
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :admins, only:[:show,:create,:update,]
  post "/login", to: "admins#login"
  get "/auto_login", to: "admins#auto_login"
end
