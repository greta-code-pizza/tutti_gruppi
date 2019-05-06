Rails.application.routes.draw do
  root 'orders#index'
  post 'new' => 'orders#create'
  resources :orders, only:[:index, :show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
