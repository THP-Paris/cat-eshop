Rails.application.routes.draw do
  root to: 'item#index'

  devise_for :users

  resources :item
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
