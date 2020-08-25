class ProfilesController < ApplicationController
    # def index 
    #     @photo = current_user.photos.order(:created_at).includes(:user).page params[:page]
    # end
    def show_albums
        @user = User.find(params[:id])
        @albums = @user.albums.all.page params[:page]
    end
    def show
        @user = User.find(params[:id])
    end
    def show_follower
        @user = User.find(params[:id])
        @follower= @user.following.all.page params[:page]

    end
    def show_following
        @user = User.find(params[:id])
        @follower= @user.follower.all.page params[:page]
    end
    def follow_connect
        User.find(params[:id]).following << current_user
        redirect_to profiles_show_path
    end
    def follow_destroy
        user=User.find(params[:id])
        user.following.delete current_user
        current_user.follower.delete user
        redirect_to profiles_show_path
    end
    
    
end