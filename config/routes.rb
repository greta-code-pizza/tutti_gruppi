# frozen_string_literal: true

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
    get 'edit/:id', to: 'dashboard#edit'
    get 'whitelist', to: 'whitelist#index'
    get 'index-produits', to: 'dashboard#index_products'
    get 'edition-produits/:id', to: 'dashboard#edit_products'
    patch 'edition-produits/:id', to: 'dashboard#update_product'
    # get 'formulaire-nouveau-produit', to: 'dashboard#form_new_product'
    get 'formulaire-nouveau-produit', to: 'dashboard#form_new_product'
    post 'ajout-produit', to: 'dashboard#add_new_product'
    resources :whitelist, only: %i[index home create new]
  end

  resources :orders, only:[:index, :show, :create, :new]
  resources :authentications, only:[:index, :show, :create, :new, :edit, :update, :destroy]
end
