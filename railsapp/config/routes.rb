Rails.application.routes.draw do

  #devise login signup
  devise_for :users
  #edit-user
  post "users/edit_profiles", to: "users#edit_profiles",as: 'users/edit_profiles'

  #root
  root 'photos#index'

  #photos
  get 'new', to: 'photos#new'
  delete 'photos/:id', to: 'photos#destroy', as: 'photos/destroy'
  
  #albums
  get "albums/add/:id", to: "albums#add", as: 'albums/add'
  #photos, albums
  resources :photos , :albums
  # profiles
  get 'profiles/albums/:id', to: 'profiles#show_albums', as: 'profiles/album'
  get 'profiles/show/:id', to: 'profiles#show', as: 'profiles/show'
  get 'profiles/following/:id', to: 'profiles#show_following', as: 'profiles/following'
  get 'profiles/follower/:id', to: 'profiles#show_follower', as: 'profiles/follower'
  post 'profiles/following-connect/:id', to: 'profiles#follow_connect', as: 'profile/following-connect'
  delete 'profiles/following-delete/:id', to: 'profiles#follow_destroy', as:'profile/following-delelte'
  
  #reaction
  get "reactions/react-photo/:id", to: "reactions#react_photo", as: 'reactions/react-photo'
  get "reactions/unreact-photo/:id", to: "reactions#unreact_photo", as: 'reactions/unreact-photo'
  get "reactions/react-album/:id", to: "reactions#react_album", as: 'reactions/react-album'
  get "reactions/unreact-album/:id", to: "reactions#unreact_album", as: 'reactions/unreact-album'

  #discover
  get "discover/photos", to: "discover#show_photos", as: 'discover/photos'
  get "discover/albums", to: "discover#show_albums", as: 'discover/albums'
end
