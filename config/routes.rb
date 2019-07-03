Rails.application.routes.draw do

  post 'users/login', to: "users#login", defaults: { format: :json }
  get 'home/index'
  devise_for :admins
  resources :admins
  root to: 'users#index'

  # resources :transactions
  defaults format: :json do
    resources :transactions
  end
  # resources :users
  defaults format: :json do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
