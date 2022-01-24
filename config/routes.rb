Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :create, :show, :new, :edit, :update] do
    resources :participants, only: [:create, :update, :destroy]
  end
end
