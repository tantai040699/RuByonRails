class AlbumsController < ApplicationController
    def index
      @albums = Album.where("status = ?",'public').order(:created_at)
    end

    def show
      @album = Album.find(params[:id])
      @photo = @album.photos
    end

    def edit
      @album = Album.find(params[:id])
    end
    
    def update
      @album = Album.find(params[:id])
      if @album.update(params_update)
        flash[:success] = 'The album has just updated'
        redirect_to albums_path
      else
        render 'edit'  
      end
      
    end
  
    private
      def params_update
        params.require(:album ).permit(:title)
      end
      

end
