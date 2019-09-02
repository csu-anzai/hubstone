Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :appartements, only: [:index, :show, :new, :create] do
    resources :selections, only: 'create'
    resources :simulations, only: 'create'
  end
  resources :selections, only: [:index, :destroy]
end
