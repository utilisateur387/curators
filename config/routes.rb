Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :collections, only: [ :show, :new, :create, :edit, :update, :destroy ] # Collections du user
  resources :artworks, only: [ :show, :new, :create, :edit, :update, :destroy ] do
    collection do
      get :search
    end
  end # Artworks du user

  namespace :explore do # Explore all artworks from all users
    resources :artworks, only: [ :index ]
  end

  resources :users, only: [] do # View users profiles, collections or artworks
    resources :collections, only: [ :index ]
    resources :artworks, only: [ :index ]
  end

  resources :cartel_scans, only: [:create]

  # Test file, to hide later!!!
  get '/components', to: 'test#components'
  get '/autocomplete', to: 'test#autocomplete'
  resources :favorites, only: [ :index, :create, :destroy ]
end
