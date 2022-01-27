Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :participants, only: [:create]
  end
  resources :participants, only: [:destroy]
  resources :users, only: [:show]
  resources :rules, only: [:index, :create, :update, :destroy]
end
