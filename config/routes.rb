Rails.application.routes.draw do
  get 'image/index'
  get 'image/show'
  get 'image/new'
  get 'image/create'
  get 'image/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
