class UsersController < ApplicationController
  
  def index
    
  end
  

  def new
    @user = User.new
  end
  def create
    @user = User.new params_user
    if @user.save
      flash[:success] = "Register success"
      SendmailuserJob.perform_later @user
      redirect_to users_path
    else
      flash[:success] = "Register failed"
      render :new
    end
  end
  def edit
    
  end
  def update
    
  end

  private
  def params_user
    params.require(:user).permit :fname, :lname, :email, :password
  end
  
  
end
