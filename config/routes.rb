Rails.application.routes.draw do
  devise_for :users, controllerts: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root "tops#index"

end
