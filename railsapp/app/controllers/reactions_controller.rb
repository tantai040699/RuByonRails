class ReactionsController < ApplicationController
    before_action :find_id_photo, only: [:react_photo]
    before_action :find_id_album, only: [:react_album]


    def react_photo
        @photo.reactions.create user_id: current_user.id
        redirect_to photos_path
        
    end
    def unreact_photo
        @react = Reaction.find_by(user_id: current_user.id, react_type: 'Photo', react_id: params[:id])
        @react.destroy
        redirect_to photos_path
    end
    def react_album
        @album.reactions.create user_id: current_user.id
        redirect_to albums_path
    end
    def unreact_album
        @react = Reaction.find_by(user_id: current_user.id, react_type: 'Album', react_id: params[:id])
        @react.destroy
        redirect_to albums_path
    end

    private
    def find_id_photo
        @photo = Photo.find(params[:id])
    end
    def find_id_album
        @album = Album.find(params[:id])
    end
    
end
