Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :collections, only: [ :index, :show, :new, :create, :edit, :update, :destroy ] # Collections du user
  resources :artworks, only: [ :index, :show, :new, :create, :edit, :update, :destroy ] # Artworks du user

  namespace :explore do # Explore all artworks from all users
    resources :artworks, only: [ :index ]
  end

  resources :users, only: [] do # View other users profiles, collections or artworks
    resources :collections, only: [ :index ], controller: 'users/collections'
    resources :artworks, only: [ :index ], controller: 'users/artworks'
  end
end
