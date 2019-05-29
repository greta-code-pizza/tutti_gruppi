Rails.application.routes.draw do
  devise_for :authentications, controllers: { registrations: 'authentications/registrations' }
  get 'home/index'
  get 'home/private'
  get 'orders/new' => 'orders#new'
  root 'home#index'

  resources :orders, only:[:index, :show, :create, :new]
  resources :authentications, only:[:index, :show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
