Rails.application.routes.draw do
  resources :ships
  root 'games#new'
end
