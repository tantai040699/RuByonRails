Rails.application.routes.draw do

  get 'feed_albums/index'
  root 'feed#index'
  get 'user_login/index'
  get  'user_sign_up/index'
  #User Signup Controller :
  resources :user_sign_up, only: :create
  # #User Login Controller :
  resources :user_login, only: :index
  # # Photo, ALbums Controller :
  resources :feed , :feed_albums
  # #feed,discovery Controller : homepage
  # get 'feed', to 'homepage#index'
  # get 'discovery', to 'homepage#discovery'

  # #Profile Controller : profile
  # get 'profile', to 'profile#index'

end
