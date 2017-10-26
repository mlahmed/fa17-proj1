Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  #get 'capture', to: 'home#capture', as: 'capture'
  patch 'capture', to: 'pokemon#capture', as: 'capture'
  patch 'damage', to: 'pokemon#damage', as: 'damage'
  patch 'create', to: 'pokemon#create', as: 'create'
  get 'pokemon/create', to: 'pokemon#create'
  post 'new', to: 'pokemon#new'
  #get 'new', to: 'pokemon#new', as: 'new'
end
