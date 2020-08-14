class UsersController < ApplicationController
  after_action :log_user_saved_to_db, only: :create

  def new
    @user = User.new
  end
  def create
    @user = User.new params_user
    if @user.save
      
      flash[:success] = "Register success"
      redirect_to photos_path
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
  def log_user_saved_to_db
    UserMailer.welcome_email(@user).deliver_later
  end
  
end
