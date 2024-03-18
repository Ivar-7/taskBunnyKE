Rails.application.routes.draw do
  # resources :messages
  resources :reviews
  resources :bookings
  # resources :tasker_comments
  resources :taskers
  resources :services
  
  # Devise Gem
  devise_for :users

  # Route to the home action
  get "/home" => "home#home", as: :home

  # Root
  root "home#index"
  
  # Get taskers json
  get '/get_taskers', to: 'services#get_taskers'

  # Not found
  match '*path', to: 'home#not_found', via: :all, constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
end
