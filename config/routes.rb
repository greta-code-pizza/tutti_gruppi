# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :authentications, controllers: { registrations: 'authentications/registrations', confirmations: 'authentications/confirmations' }
  root 'home#index'
  get 'home/index'
  get 'home/private'
  get 'orders/new', to: 'orders#new'

  namespace :admin do
    get 'dashboard', to: 'dashboard#home'
    get 'liste-des-membres', to: 'dashboard#index'
    get 'show/:id', to: 'dashboard#show'
    get 'edit/:id', to: 'dashboard#edit'
    get 'whitelist', to: 'whitelist#index'
    get 'index-produits', to: 'products#index_products'
    get 'edition-produits/:id', to: 'products#edit_products'
    patch 'edition-produits/:id', to: 'products#update_product'
    get 'form_new_product', to: 'products#form_new_product'
    post 'form_new_product', to: 'products#add_new_product'
    delete 'delete_product/:id', to: 'products#destroy'
    
    resources :whitelist, only: %i[index home create new]
  end

  resources :orders, only: %i[index show create new]
  resources :authentications, only: %i[index show create new edit update destroy]
end
