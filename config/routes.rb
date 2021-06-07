Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  resources :guides
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end
