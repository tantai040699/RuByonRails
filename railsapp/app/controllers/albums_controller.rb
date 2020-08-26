class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_id_album, only: [:show,:edit, :update, :destory,:add]

    def index
      @albums = Album.where("status = ?",'1').order(:created_at).includes(:user,:photos).page params[:page]
    end

    def new
      @album =Album.new
    end
    
    def create
      @album = current_user.albums.new params_album
      @photo = current_user.photos.new params_photo
      @rela= @album.albums_photos.new(photo: @photo)
      if @rela.save && @album.save  && @photo.save
        @album.update_attribute(:collection,1)
        flash[:success] = "Upload album success"
        redirect_to albums_path
      else
        flash[:success] = "Upload failed"
        render :new
      end
    end

    def show
      @photo = @album.photos
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
