class Follower < ApplicationRecord
    belongs_to :user,dependent: :destroy , counter_cache: :count_follower
end
