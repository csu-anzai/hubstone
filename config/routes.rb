Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :appartements, only: [:index, :show, :new, :create] do
    
  end
end
