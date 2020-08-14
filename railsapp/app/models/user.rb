class User < ApplicationRecord
    has_many :photos,dependent: :destroy
    has_many :albums,dependent: :destroy


    #Follower and Following
    has_many :active_follows, class_name: Follow.name, foreign_key: :follower_id
    has_many :following , through: :active_follows, source: :followed

    has_many :passive_follows, class_name: Follow.name, foreign_key: :followed_id
    has_many :follower , through: :passive_follows



    #validate
    # validates :fname, :lname, :email, :password , presence: true
    # validates :fname, :lname, length: { maximum:25}
    # validates :email, length: {maximum:255}, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
    # validates :password, length: {maximum:64}, confirmation: true



    #callback
    after_create :log_user_saved_to_db
private
    def log_user_saved_to_db
        UserMailer.welcome_email(self).deliver_later
    end
end
