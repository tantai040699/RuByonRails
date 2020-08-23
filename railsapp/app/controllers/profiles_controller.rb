class ProfilesController < ApplicationController
    def index
        @photo = Photo.where("status = ?",'1').order(:created_at).includes(:user).page params[:page]
    end
    
end
