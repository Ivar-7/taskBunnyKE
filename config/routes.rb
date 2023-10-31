Rails.application.routes.draw do
  resources :bookings
  resources :tasks
  resources :tasker_comments
  resources :taskers
  resources :services
  # Devise Gem
  devise_for :users

  # Root
  root "home#home"

  # Not found
  match '*path', to: 'home#not_found', via: :all

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

end
