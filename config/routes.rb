Rails.application.routes.draw do
  resources :guides
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_for :users
end
