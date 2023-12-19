Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :messages, only: [:index, :create] 
  resources :hashtag_tweets, only: [:index]    
  resources :hashtags, only: [:show]           
  resources :retweets, only: [:create, :destroy] 
  resources :likes, only: [:create, :destroy]   
  resources :tweets, only: [:show, :edit, :create, :destroy]
  resources :users, only: [:show, :edit] 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  
  root 'home#index'
end
