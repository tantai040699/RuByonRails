class Album < ApplicationRecord
    has_and_alongs_to_many :photos
    belongs_to :user, counter_cache: :count_album
    has_many :reactions, as: :react , dependent: :destroy
end
