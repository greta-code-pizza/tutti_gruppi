Rails.application.routes.draw do
  root 'orders#new'
  post 'new' => 'orders#create'
  resources :order, only:[:create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
