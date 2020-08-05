class Album < ApplicationRecord
    has_and_belongs_to_many :photos
    belongs_to :user
    has_many :reactions, as: :react , dependent: :destroy


    validates :title, :desc, :status, :collection, presence: true
    validates :title, length: {maximum:140}
    validates :desc, length: {maximum:300}
    validates :collection, numericality: {more_than: 1, less_than:25}

end
