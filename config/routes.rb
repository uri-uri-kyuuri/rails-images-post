Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  get 'likes/index' => 'likes#index'
  root 'hello#index' 

  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  resources :users, only: [:show]
 
  namespace :admin do
    resources :tweets, only: [:index, :new]
  end

end
