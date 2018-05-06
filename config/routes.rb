Rails.application.routes.draw do

  get 'callback/index'
  post '/' => 'callback#received_data'
  get 'callback/received_data'
 
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :posts
    end
  end
 

  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :communities
  resources :collections
  resources :categories
  devise_for :users
  devise_for :models
  resources :charges
  resources :sizes

  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  resources :tags

  get ':name' => 'users#show', as: 'user'

  root 'posts#index'

  get 'post/new'

  ActiveAdmin.routes(self)

end
