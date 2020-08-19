class AlbumsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_id_album, only: [:show,:edit, :update, :destory]
    def index
      @albums = Album.where("status = ?",'public').order(:created_at)
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
        @photo = Album.find(params[:id])
      end

      def params_update
        params.require(:album ).permit(:title)
      end
      

end
