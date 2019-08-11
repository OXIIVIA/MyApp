Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :users, only: [:index, :edit, :update]
  resources :artists, only: [:index, :show, :edit, :update, :destroy]
end
