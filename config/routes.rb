Rails.application.routes.draw do
  
  resources :vehicles
  resources :vehicles do
    member do
      post 'sale', to: 'vehicles#buy'
    end
  end
  resources :sales
  devise_for :users
  # Set Views/Home/index is the main page
  root 'home#index'
  get 'home/index', to: 'home#index'
  
  get 'home/about'

end
