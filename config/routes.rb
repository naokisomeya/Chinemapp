Rails.application.routes.draw do

 
  devise_for :users
  root to: "home#top"
  resources :users
  resources :movies do
    resources :favorites, only: [:create, :show, :destroy]
    resources :movie_comments, only: [:create]
  end
  resources :chinemas do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
