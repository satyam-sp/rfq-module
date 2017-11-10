Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users, controllers: {sessions: "sessions"}

  resources :order_items
  resources :carts
  resources :orders
  resources :product_types
  resources :variants
  resources :products


  namespace :admin do
    resources :dashboard
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
