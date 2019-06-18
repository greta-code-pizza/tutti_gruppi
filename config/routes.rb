Rails.application.routes.draw do
  devise_for :authentications, controllers: { registrations: 'authentications/registrations', confirmations: 'authentications/confirmations'}

  root 'home#index'

  get 'home/index'
  get 'home/private'
  get 'orders/new', to: 'orders#new'

  namespace :admin do
    get 'dashboard', to: 'dashboard#home'
    get 'liste-des-membres', to: 'dashboard#index'
    get 'show/:id', to: 'dashboard#show'
  end

  resources :orders, only:[:index, :show, :create, :new]
  resources :authentications, only:[:index, :show, :create, :new, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
