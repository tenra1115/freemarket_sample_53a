Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root "products#index"
  resources :users, only: [:index, :new,:edit]
  resources :products, only: [:index, :show,:new, :create]
  resources :comments, only: [:index]
  resources :images, only: [:index]
  resources :cards, only: [:index]
  resources :addresses, only: [:index]
  get "users/base" => "users#base"
  get "users/_card" => "users#_card"
  get "users/privacy" => "users#privacy"
  get "users/mypage" => "users#mypage"
  get "users/finish" => "users#finish"
  get "users/select" => "users#select"
  post "users/call" => "users#call"
  get "users/address" => "users#address"
  post "users/login" => "users#login"
  get "users/add_card" => "users#add_card"
  get "users/create_card" => "users#create_card"
  get "users/logout" => "users#logout"
  get "users/sns" => "users#sns"
  get "products/buy" => "products#buy"

end