Rails.application.routes.draw do
  root 'games#new'

  resources :test, only: [:index]

  resources :ships
  resources :fleets
end
