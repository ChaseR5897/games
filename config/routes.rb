Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :games, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end
