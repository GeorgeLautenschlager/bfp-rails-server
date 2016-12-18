Rails.application.routes.draw do
  root 'games#new'

  resources :test, only: [:index]

  resources :games
  resources :fleets
  resources :ships
end
