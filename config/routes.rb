Rails.application.routes.draw do
  root 'games#new'

  resources :ships do
    member do
      patch 'move'
    end
  end
end
