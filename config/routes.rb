Rails.application.routes.draw do

 
  root to: 'item#index'

  devise_for :users

  resources :item
  resources :orders

resources :join_table_items_carts, only: [:create, :update, :destroy]
resources :carts, except: [:index, :new, :edit]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
