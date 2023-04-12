Rails.application.routes.draw do
  resources :video_comments
  resources :blog_comments
  resources :audio_comments
  resources :videos
  resources :audios
  resources :blogs
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
