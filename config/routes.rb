Rails.application.routes.draw do
  # get 'messages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts', to: 'posts#index'


  devise_for :users

  # get 'messages/index'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :users, only: [:edit, :update]
  
  resources :tweets, only: [:index, :new]
  resources :groups, only: [:new, :create]

end
