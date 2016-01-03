Rails.application.routes.draw do
  devise_for :users

  root 'prototypes/popular#index'

  resources :user, only: [:index, :show, :new, :edit, :update]
  resources :login, only: :index
  resources :top, only: :index
  resources :prototypes do
    resources :comments, only: [:create], module: 'prototypes'
    resources :likes, only: [:create, :destroy]
  end
  resources :newest, only: :index, module: 'prototypes'
  resources :popular, only: :index, module: 'prototypes'
  resources :tags, only: [:index, :show]

end
