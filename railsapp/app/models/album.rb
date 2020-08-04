class Album < ApplicationRecord
    has_and_alongs_to_many :photos
end
