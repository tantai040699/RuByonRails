class Follower < ApplicationRecord
    belongs_to :user, counter_cache: :count_follower
end
