Rails.application.routes.draw do
  devise_for :users
  resources :cars

  root 'cars#index'

=begin 
  get 'cars/index', to: 'cars#index'
=end
  get 'cars/:id', to: 'cars#show'
=begin 
  get 'cars/new', to: 'cars#new'
=end
  post 'cars/new', to: 'cars#create'
end