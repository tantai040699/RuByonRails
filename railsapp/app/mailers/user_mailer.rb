class UserMailer < ApplicationMailer
 
  def welcome_email user
    
    @user = user
    @url  = 'https://www.facebook.com/tan.tai.9406/'
    mail(to: @user.email, subject: 'Welcome to My NUS!!! Coming now !!!')
  end
end
