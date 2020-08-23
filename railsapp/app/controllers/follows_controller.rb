class FollowsController < ApplicationController
    before_action :find_id_user, only: [:following_connect,:follower_connect]
    def show_follower
        @follower= current_user.following.all
    end
    def show_following
        @follower= current_user.follower.all
    end
    def following_connect 
       @follower= current_user.following << @follow
    end
    def follower_connect
        @follower= current_user.delete << @follow
        current_user.update_couters(:following_count)
    end
    
    private
    def find_id_user
        @follow = User.find(params[:id])
    end
    
end
