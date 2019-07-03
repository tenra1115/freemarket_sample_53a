Rails.application.routes.draw do

  root "products#index"
  resources :users, only: [:index, :new]
  resources :products, only: [:index]
  resources :comments, only: [:index]
  resources :images, only: [:index]
  resources :cards, only: [:index]
  resources :addresses, only: [:index]
  get "users/new6" => "users#new6"
  get "users/new5" => "users#new5"
  get "users/new4" => "users#new4"
  get "users/new3" => "users#new3"
  get "users/new2" => "users#new2"
  get "users/new1" => "users#new1"
  get "users/new0" => "users#new0"
end
