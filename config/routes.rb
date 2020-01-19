Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static_pages#home"

# sessions
get "/signin", to: "sessions#new"
post "/sessions/create", to: "sessions#create"
delete "/signout", to: "sessions#destroy"

# rides
post "/scholarships/new", to: "scholarships#new"

resources :schools

resources :users
end
