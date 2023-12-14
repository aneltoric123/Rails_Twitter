Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/create'
  get 'hashtag_tweets/index'
  get 'hashtags/show'
  get 'retweets/create'
  get 'retweets/destroy'
  get 'likes/create'
  get 'likes/destroy'
  get 'tweets/show'
  get 'tweets/edit'
  get 'tweets/create'
  get 'tweets/destroy'
  get 'users/show'
  get 'users/edit'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  
  root 'tweets#index'
end
