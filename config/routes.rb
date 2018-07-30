Rails.application.routes.draw do
  # get 'static_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users' => 'users#all'
  get 'users/new' => 'users#new'
  post 'users/new' => 'users#create'

  get 'users/:id' => 'users#show'

  root 'static_pages#index'
end
