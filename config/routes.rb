Rails.application.routes.draw do
  
  devise_for :users
  get 'item/index'
  get 'item/new'
  get 'item/create'
  get 'item/update'
  root to: 'item#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
