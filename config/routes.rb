Rails.application.routes.draw do
  devise_for :users
  root 'workers#index'
  resources :workers
  resources :cars
  resources :users
end
