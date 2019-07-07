Rails.application.routes.draw do

  root "products#index"
  resources :users, only: [:index, :new]
  resources :products, only: [:index]
  resources :comments, only: [:index]
  resources :images, only: [:index]
  resources :cards, only: [:index]
  resources :addresses, only: [:index]
  get "users/base" => "users#base"
  get "users/card" => "users#card"
  get "users/privacy" => "users#privacy"
  get "users/finish" => "users#finish"
  get "users/select" => "users#select"
  get "users/call" => "users#call"
  get "users/address" => "users#address"
  get "products/buy" => "products#buy"
  get "products/registration" => "products#registration"
  get "products/logout" => "products#logout"
  get "products/profile_edit" => "products#profile_edit"
  get "products/show" => "products#show"
  
end