Rails.application.routes.draw do
  # get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]

  root 'tops#index'
  resources :users, only: [:new, :create, :show]

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
