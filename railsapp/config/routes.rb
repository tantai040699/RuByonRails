Rails.application.routes.draw do

  root 'user_sign_up#index'
  #User Signup Controller :
  resources :user_sign_up, only: :create
  # #User Login Controller :
  # resources :login, only: :index
  # # Photo, ALbums Controller :
  # resources :photo , :album
  # #feed,discovery Controller : homepage
  # get 'feed', to 'homepage#index'
  # get 'discovery', to 'homepage#discovery'

  # #Profile Controller : profile
  # get 'profile', to 'profile#index'

end
