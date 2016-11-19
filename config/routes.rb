Rails.application.routes.draw do
  root 'games#new'

  resources :ships
end
