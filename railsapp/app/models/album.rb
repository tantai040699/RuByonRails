class Album < ApplicationRecord
    has_many :albums_photos,dependent: :destroy
    has_many :photos, through: :albums_photos
   
    belongs_to :user, counter_cache: :albums_count
    has_many :reactions, as: :react , dependent: :destroy

    #upload file
    # validates :title, :desc, :status, :collection, presence: true
    # validates :title, presence: true ,length: {minimum:4,maximum:140}
    # validates :status, acceptance: {accept: ['0','1']}
    # validates :desc, length: {maximum:300}
    # validates :collection, numericality: {more_than: 1, less_than:25}

end 