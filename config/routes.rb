Rails.application.routes.draw do
  resources :wishlists
  resources :subscriptions
  resources :comments
  resources :contents
  resources :categories  
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
