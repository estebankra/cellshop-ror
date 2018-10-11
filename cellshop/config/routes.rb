Rails.application.routes.draw do
  resources :products
  resources :models
  resources :memories
  resources :brands
  resources :colors
  resources :storages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
