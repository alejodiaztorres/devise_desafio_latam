Rails.application.routes.draw do
  resources :jams
  get 'home/index'
  devise_for :users
  get 'players/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
