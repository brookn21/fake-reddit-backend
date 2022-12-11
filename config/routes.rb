Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :notifications
  resources :community_users
  resources :posts
  resources :communities
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
