Rails.application.routes.draw do

  root "products#index"
  get 'products/members5'  =>  'products#members5' 
  get 'products/members2'  =>  'products#members2'
  get 'products/members3'  =>  'products#members3'
  get 'products/members4'  =>  'products#members4'  
  resources :users, only: [:index]
  resources :products, only: [:index]
  resources :comments, only: [:index]
  resources :images, only: [:index]
  resources :cards, only: [:index]
  resources :addresses, only: [:index]
  
end

