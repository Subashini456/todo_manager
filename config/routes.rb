Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Todo - resourse
  # - to view list of resource - index
  # - to view single resource - show
  # - to create a new resource
  # - resource :todos --> rails get all the routes by default

  get "todos", to: "todos#index"
  get "todos/:id", to: "todos#show"
end
