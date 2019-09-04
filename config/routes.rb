Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :appartements, only: [:index, :show, :new, :create] do
    resources :selections, only: 'create'
    resources :simulations, only: [:new, :create]
  end
  resources :selections, only: [:index, :destroy, :update]
  resources :simulations, only:[:show] do
    get 'pdf_simulations/show', to: 'pdf_simulations#show'
  end


  get 'selections/comparaison', to: 'selections#comparaison'
  get 'dashboard', to: 'users#dashboard'


end
