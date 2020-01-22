Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  get '/auth/:provider/callback' => 'sessions#create'
# sessions
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  get "/signout", to: "sessions#destroy"

  post "/scholarships/new", to: "scholarships#new"


  resources :schools

  resources :users
end
