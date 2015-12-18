Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :categories
  resources :movies

  resource :cart, only: [:show]
  get 'checkout' => "carts#checkout", as: :carts_validate
  resources :order_items, only: [:create, :update, :destroy]

  root 'movies#index'
  get "admin" => "admin#home"
end
