Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "db", to: "users#index"
  get "signup", to: "users#new"
  post "signup", to: "users#create"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  # get "show", to: "users#index"
  # get "show/:id", to: "users#show"
  # get "edit", to: "users#edit"
  # post "edit", to: "users#update"
  resources :users
  # get "edit", to: "users#edit"
  # Defines the root path route ("/")
  # root "articles#index"
end
