Rails.application.routes.draw do
  root 'games#new'

  resources :ships
  resources :fleets
end
