Rails.application.routes.draw do
  root 'home#index'
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :communities
  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
  get '/users/:id/posts', to: "users#allposts"
  get '/users/:id/followers', to: "users#followers"
  get '/users/:id/following', to: "users#following"
  get '/analytics', to: "sessions#analytics"



end
