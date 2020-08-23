class AlbumsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_id_album, only: [:show,:edit, :update, :destory]

    def index
      @albums = Album.where("status = ?",'1').order(:created_at).includes(:user,:photos).page params[:page]
    end

    def new
      @album =Album.new
    end

    def create
      @album = current_user.albums.create params_album
      @photo = current_user.photos.create params_photo
      @rela= @album.albums_photos.new(photo: @photo)
      if @rela.save
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
      
    end
    
    def update
      if @album.update(params_update)
        flash[:success] = 'The album has just updated'
        redirect_to albums_path
      else
        render 'edit'  
      end
    end
    def destroy
    
    end
  
    private
      def find_id_album
        @album = Album.find(params[:id])
      end

      def params_album
        params.require(:album ).permit(:title,:desc,:collection,:status)
      end
      def params_photo
        params.require(:album ).permit(:title, :desc,:status,:image)
      end

end
