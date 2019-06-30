Rails.application.routes.draw do

  root "products#index"
  resources :users, only: [:index, :new]
  resources :products, only: [:index]
  resources :comments, only: [:index]
  resources :images, only: [:index]
  resources :cards, only: [:index]
  resources :addresses, only: [:index]
  get "users/new3" => "users#new3"
end
