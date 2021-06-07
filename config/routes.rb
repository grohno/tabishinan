Rails.application.routes.draw do
  resources :guides
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users
  resources :favorites, only: [:index, :create, :destroy]
end
