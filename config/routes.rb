Rails.application.routes.draw do
  resources :users, except: [:show]

  root "users#index"

  get "/users", to: "users#index"
  get "/new", to: "users#new"
  get "/users/:id", to: "users#edit"
end
