class PhotosController < ApplicationController
  before_action :authenticate_user!
  def index
    @photo = Photo.where("status = ?",'public').order(:created_at).page params[:page]
  end
  
  def new
    @photo = Photo.new
  end

  def create

    @photo = current_user.photos.new params_photo
    if @photo.save
      flash[:success] = "Upload success"
      redirect_to photos_path
    else
      flash[:success] = "Register failed"
      render :new
    end
  end
  def destroy
  
  end
  private
  def params_photo
    params.require(:photo ).permit(:title, :desc,:image,:status)
  end
  
end
