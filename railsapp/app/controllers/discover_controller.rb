class DiscoverController < ApplicationController
    before_action :authenticate_user!
    def show_photos
        @photo = Photo.where("status = ?",'1').order(:created_at).includes(:user,:reactions).page params[:page]    
    end
    def show_albums
        @album = Photo.where("status = ?",'1').order(:created_at).includes(:user,:reactions).page params[:page]  
    end
    
    
end
