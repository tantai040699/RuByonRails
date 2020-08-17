class PhotosController < ApplicationController
  def index
    @photo = Photo.where("status = ?",'public').order(:created_at)
  end
  
end
