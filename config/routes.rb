Rails.application.routes.draw do
  devise_for :users
  resources :cars

  root 'cars#index'

  get 'cars', to: 'cars#index'

  get 'cars/new', to: 'cars#new'

  post 'cars/new', to: 'cars#create'

  get 'cars/:id', to: 'cars#show'

  get 'cars/:id/edit', to: 'cars#edit'

  patch 'car/:id', to: 'cars#update'

  delete 'cars/:id', to: 'cars#destroy'

end