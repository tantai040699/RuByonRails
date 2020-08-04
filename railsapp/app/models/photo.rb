class Photo < ApplicationRecord
    has_and_belongs_to_many :albums
    belongs_to :user
    has_many :reactions ,as: :react, dependent: :destroy

end
