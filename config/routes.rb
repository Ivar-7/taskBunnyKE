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

  # Privacy policy
  get 'privacy_policy', to: 'home#privacy_policy'

  # Force HTTPS redirection
  config.force_ssl = true

  # Redirect specific routes to HTTPS
  get '/ads.txt', to: redirect(protocol: "https://", status: 301)

  # Not found
  match '*path', to: 'home#not_found', via: :all, constraints: lambda { |req|
    req.path.exclude?('rails/active_storage')
  }

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
end
