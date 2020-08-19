class PhotosController < ApplicationController
  def index
    @photo = Photo.where("status = ?",'public').order(:created_at).page params[:page]
  end
  
end
