class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_id_photo, only: [:edit,:update,:destroy]
  
  def index
    if current_user
      @photos= Photo.joins("INNER JOIN follows ON follows.follower_id = user_id").where("follows.followed_id = :id", id: current_user.id).page params[:page]
    else
      @photos= Photo.where("status = ?",'1').order(:created_at).includes(:user,:reactions).page params[:page]
    end
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
      flash[:danger] = "Register failed"
      render :new
    end
  end
  def edit
     
  end
  def update
    if @photo.update(params_photo)
      flash[:success] = 'The photo has just updated'
      redirect_to profiles_show_path(current_user)
    else
      render 'edit'  
    end
  end
  
  def destroy
    @photo.destroy
    redirect_to profiles_show_path(current_user.id)
  end
  private
  def params_photo
    params.require(:photo ).permit(:title, :desc,:status,:image)
  end

  def find_id_photo
    @photo = Photo.find(params[:id])
  end
  
  
end
