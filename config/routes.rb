Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  #get 'capture', to: 'home#capture', as: 'capture'
  patch 'capture', to: 'pokemons#capture', as: 'capture'
  patch 'damage', to: 'pokemons#damage', as: 'damage'
  post 'create/:trainer_id', to: 'pokemons#create', as: 'create'
  get 'pokemon/create', to: 'pokemons#create'
  get 'pokemons/new', to: 'pokemons#new', as: 'new'
  post 'new', to: 'pokemons#new'
  #get 'new', to: 'pokemon#new', as: 'new'
end
