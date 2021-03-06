# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :authentications, controllers: { registrations: 'authentications/registrations', confirmations: 'authentications/confirmations' }
  root 'home#index'
  get 'home/index'
  get 'home/private'
  get 'orders/new', to: 'orders#new'

  get 'upAdmin/:id' => 'authentications#upAdmin'
  get 'upManager/:id' => 'authentications#upManager'
  get 'upMember/:id' => 'authentications#upMember'

  get 'manager_groupment', to: 'groupment#manager_groupment'
  get 'order_groupment_quantity', to: 'groupment#order_groupment_quantity'
  get 'order_groupment_total', to: 'groupment#order_groupment_total'
  get 'available/:id' => 'groupment#available'
  get 'unavailable/:id' => 'groupment#unavailable'

  namespace :admin do
    get 'dashboard', to: 'dashboard#home'
    get 'liste-des-membres', to: 'dashboard#index'
    get 'show/:id', to: 'dashboard#show'
    get 'edit/:id', to: 'dashboard#edit'
    get 'whitelist', to: 'whitelist#index'
    
    get 'events_index', to: 'events#index_events'
    get 'events_new', to: 'events#new_events'
    post 'events_new', to: 'events#create_events'
    get 'events_edit/:id', to: 'events#edit_events'
    patch 'events_edit/:id', to: 'events#update_events'
    delete 'events_delete/:id', to: 'events#destroy_events'

    get 'index-produits', to: 'products#index_products'
    get 'edition-produits/:id', to: 'products#edit_products'
    patch 'edition-produits/:id', to: 'products#update_product'
    get 'index-produits', to: 'products#form_new_product'
    post 'index-produits', to: 'products#add_new_product'
    delete 'delete_product/:id', to: 'products#destroy'
    get 'available/:id' => 'products#available'
    get 'unavailable/:id' => 'products#unavailable'
    resources :whitelist, only: %i[index home create new]
  end

  resources :groupment, only: %i[show index]
  resources :orders, only: %i[index show create new edit update destroy]
  resources :authentications, only: %i[index show create new edit update destroy]
end
