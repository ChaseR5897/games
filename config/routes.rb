Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  resources :games, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end
