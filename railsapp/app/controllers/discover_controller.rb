class DiscoverController < ApplicationController
    before_action :authenticate_user!
    def show_photos
        @photo = Photo.where("status = ?",'1').order(:created_at).includes(:user).page params[:page]    
    end
    def show_albums
        @albums = Album.where("status = ?",'1').order(:created_at).includes(:user).page params[:page]  
    end
    
    
end
