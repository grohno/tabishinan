Rails.application.routes.draw do
  get 'tops/index'
  resources :guides
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users
  namespace :admin do
   resources :users
  end
  resources :favorites, only: [:index, :create, :destroy]
  resources :relationships, only: [:index, :create, :destroy]
end
