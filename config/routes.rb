Rails.application.routes.draw do
  root "static_pages#index" 
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users
  resources :orders
  resources :carts
  resources :items
  resources :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
