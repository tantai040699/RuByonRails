class Follow < ApplicationRecord
	belongs_to :follower, class_name: User.name, counter_cache: :follower_count
	belongs_to :followed, class_name: User.name, counter_cache: :following_count
end
