class PhotosController < ApplicationController
  before_action :authenticate_user!
  def index
    @photo = Photo.where("status = ?",'public').order(:created_at).page params[:page]
  end
  
end
