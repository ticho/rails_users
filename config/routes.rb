Rails.application.routes.draw do
  # get 'static_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users' => 'user#all'
  get 'users/new' => 'user#new'
  post 'users/new' => 'user#create'

  get 'users/:id' => 'user#show'

  root 'static_pages#index'
end
