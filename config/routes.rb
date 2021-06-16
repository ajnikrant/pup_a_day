Rails.application.routes.draw do
  resources :people
  resources :rentals
  resources :puppies
  resources :advertisements, only: [:index]
  resources :shelters

  get "/logout", to: "sessions#logout", as: 'logout'

  get "/sessions/new", to: "sessions#new_login", as: "new_login"
  post "/sessions", to: "sessions#create_login", as: "login"

  root to: "main#index", as: "main"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
