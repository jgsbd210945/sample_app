Rails.application.routes.draw do
  get 'users/new'
  get  "/help",    to: "static_pages#help"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :microposts,          only: [:create, :destroy]
  get '/microposts', to: 'static_pages#home'
end
