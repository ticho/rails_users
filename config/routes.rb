Rails.application.routes.draw do
  # routes handled by the app
  get 'users', to: 'users#all', as: 'all'
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users/new', to: 'users#create', as: 'create_user'
  get 'users/:id', to: 'users#show', as: 'show_user'

  root 'static_pages#index'
end
