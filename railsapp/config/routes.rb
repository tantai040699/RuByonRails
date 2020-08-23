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
  get 'profiles/index', to: 'profiles#index'

  get 'follows/follower', to: 'follows#show_follower'
  get 'follows/following', to: 'follows#show_following'

  # #feed,discovery Controller : homepage
  # get 'feed', to 'homepage#index'
  # get 'discovery', to 'homepage#discovery'

  # #Profile Controller : profile
  # get 'profile', to 'profile#index'

end
