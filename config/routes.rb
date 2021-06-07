Rails.application.routes.draw do
  root 'tops#index'
  resources :guides
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  resources :users
  namespace :admin do
   resources :users
  end
  resources :favorites, only: [:index, :create, :destroy]
  resources :relationships, only: [:index, :create, :destroy]
end
