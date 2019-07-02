Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins
  resources :admins
  resources :transactions
  resources :users
  # root to: 'home#index'
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
