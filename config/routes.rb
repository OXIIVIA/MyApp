Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  root 'articles#index'
  resources :users, only: [:index, :edit, :update]
  resources :artists, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :videos, only: [:index, :show]
  resources :articles, only: [:index, :show]

  post '/follow_users/:artist_id' => 'follow_users#create', as: 'follow'
  delete '/follow_users/:artist_id' => 'follow_users#destroy', as: 'unfollow'

  post '/favorite_videos/:video_id' => 'favorite_videos#create', as: 'add_favorite'
  delete '/favorite_videos/:video_id' => 'favorite_videos#destroy', as: 'remove_favorite'

end
