Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Todo - resourse
  # - to view list of resource - index
  # - to view single resource - show
  # - to create a new resource
  # - resources :todos --> rails get all the routes by default

  get "/", to: "home#index"
  resources :todos

  resources :users

  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
end
