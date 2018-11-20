Rails.application.routes.draw do

  devise_for :users
  resources :products
  root 'products#index'
  # devise_for :users, :controllers => { registrations: 'registrations' }




end
