Rails.application.routes.draw do

  
  devise_for :users
  # devise_scope :user do
  #  get:'devise/sessions#new'
  # end
  root 'photos#index'
  get 'new', to: 'photos#new'

  # get 'user_login/index'
  # get  'user_sign_up/index'
  #User Signup Controller :
  # resources :user_sign_up, only: :create
  # # #User Login Controller :
  # resources :user_login, only: :index
  # # Photo, ALbums Controller :
  resources :photos , :albums
  # get 'profiles/photo', to: 'profiles#index', as: 'profiles/photo'
  get 'profiles/albums/:id', to: 'profiles#show_albums', as: 'profiles/album'
  get 'profiles/show/:id', to: 'profiles#show', as: 'profiles/show'

  get 'profiles/following/:id', to: 'profiles#show_following', as: 'profiles/following'
  get 'profiles/follower/:id', to: 'profiles#show_follower', as: 'profiles/follower'
  post 'profiles/following-connect/:id', to: 'profiles#follow_connect', as: 'profile/following-connect'
  delete 'profiles/following-delete/:id', to: 'profiles#follow_destroy', as:'profile/following-delelte'
  # #feed,discovery Controller : homepage
  # get 'feed', to 'homepage#index'
  # get 'discovery', to 'homepage#discovery'

  # #Profile Controller : profile
  # get 'profile', to 'profile#index'

end
