# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :authentications, controllers: {
    registrations: 'authentications/registrations',
    confirmations: 'authentications/confirmations'
  }
  get 'home/index'
  get 'home/private'
  get 'orders/new', to: 'orders#new'

  namespace :admin do
    get 'dashboard', to: 'dashboard#home'
    get 'liste-des-membres', to: 'dashboard#index'
    get 'show/:id', to: 'dashboard#show'
    get 'edit/:id', to: 'dashboard#edit'
    get 'whitelist', to: 'whitelist#index'
    # post 'wwhitelist', to: 'whitelist#create'
    resources :whitelist, only: %i[index home create new]
  end
  root 'home#index'

  resources :orders, only: %i[index show create new]
  resources :authentications, only: %i[index show create new destroy update]
end
