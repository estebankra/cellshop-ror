Rails.application.routes.draw do
  get 'comments/new' 
  get 'comments/create' 
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'users/registers'
  get 'users/level/:id' => 'users#level'
  resources :order_details
  resources :carts
  get 'carts/add/:id' => 'carts#add'
  get 'orders/add/:id' => 'orders#add'
  resources :orders
  devise_for :users
  get 'users/registers'
  get 'users/update'
  patch 'users/save'
  get 'home/index'
  get 'home_controller/index'
  resources :products
  resources :models
  resources :memories
  resources :brands
  resources :colors
  resources :storages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
