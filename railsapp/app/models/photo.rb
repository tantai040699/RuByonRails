class Photo < ApplicationRecord
    has_and_alongs_to_many :albums
end
