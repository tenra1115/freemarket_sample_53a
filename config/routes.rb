Rails.application.routes.draw do
  

  root "products#index"
  resources :users, only: [:index]
  resources :products, only: [:index]
  resources :comments, only: [:index]
  resources :images, only: [:index]
  resources :cards, only: [:index]
  resources :addresses, only: [:index]
end
