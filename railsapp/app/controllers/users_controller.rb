class UsersController < ApplicationController
    before_action :authenticate_user!
    def edit_profiles
        if current_user.update(params_user)
            flash[:success] = 'Profiles has just updated'
            redirect_to profiles_show_path(current_user)
          else
            render 'edit'  
          end
    end
    
    private
    def params_user
        params.require(:user ).permit(:fname, :lname,:avatar,:email)
    end
        
end
