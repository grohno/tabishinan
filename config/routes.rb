Rails.application.routes.draw do
  get 'relationships/index'
  get 'relationships/create'
  get 'relationships/destroy'
  resources :guides
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users
  resources :favorites, only: [:index, :create, :destroy]
end
