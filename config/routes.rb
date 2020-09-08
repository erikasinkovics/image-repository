Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :users do
    resources :images, only: [:index, :show, :new, :create]
  end
  resources :images, only: [:destroy]

end
