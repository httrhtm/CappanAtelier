Rails.application.routes.draw do
  get 'shops/index'
  devise_for :users, controllerts: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root "tops#index"

  resources :shops, only: [:index, :new, :create, :show]
  resources :registration, only: [:new, :create]
end
