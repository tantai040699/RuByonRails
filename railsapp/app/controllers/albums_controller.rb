class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_id_album, only: [:show,:edit, :update, :destory]

    def index
      if current_user
        @albums= Album.joins("INNER JOIN follows ON follows.follower_id = user_id").where("follows.followed_id = :id", id: current_user.id).includes(:user,:reactions).page params[:page]
      else
          @albums = Album.where("status = ?",'1').order(:created_at).includes(:user).page params[:page]
      end
    end

    def new
      @album =Album.new
    end
    
    def create
      @album = current_user.albums.new params_album
      @photo = current_user.photos.new params_photo
      @rela= @album.albums_photos.new(photo: @photo)
      if @rela.save && @album.save  && @photo.save)
        flash[:success] = "Upload album success"
        redirect_to albums_path
      else
        flash[:danger] = "Upload failed"
        render :new
      end
    end

    def edit
      @photo = @album.photos.all
    end
    
    def update
      @photo = current_user.photos.new params_photo
      @rela= @album.albums_photos.new(photo: @photo)
      if @album.update(params_album) &&  @rela.save
        flash[:success] = 'The album has just updated'
        redirect_to profiles_album_path(current_user)
      else
        render 'edit'
      end
    end
    
    def destroy
      @album.destroy
    end
  
    private
      def find_id_album
        @album = Album.find(params[:id])
      end

      def params_album
        params.require(:album ).permit(:title,:desc,:status)
      end
      def params_photo
        params.require(:album ).permit(:title, :desc,:status,:image)
      end

end
