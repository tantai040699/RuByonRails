class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :find_id_photo, only: [:edit,:update,:destroy]

  def index
    @photo = Photo.where("status = ?",'1').order(:created_at).includes(:user).page params[:page]
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
  def edit
    
  end
  def update
    if @photo.update(params_photo)
      flash[:success] = 'The photo has just updated'
      redirect_to photos_path
    else
      render 'edit'  
    end
  end
  
  def destroy
  
  end
  private
  def params_photo
    params.require(:photo ).permit(:title, :desc,:image,:status)
  end

  def find_id_photo
    @photo = Photo.find(params[:id])
  end
  
  
end
