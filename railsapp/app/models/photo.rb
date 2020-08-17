class Photo < ApplicationRecord
    has_many :albums_photos
    has_many :albums, through: :albums_photos
   

    belongs_to :user
    has_many :reactions ,as: :react, dependent: :destroy

    # validates :title, :desc, :status, :image, presence: true
    # validates :title, length: {maximum:140}
    # validates :desc, length: {maximum:300}
    validates :status, acceptance: {accept: ['private','public']}
    # validates :image, format: {with: /\.(png|jpeq|gif)\Z/i}
    # validate :image_size_validation


    private
    def image_size_validation
        errors[:image] << "should be less than 5MB" if :image.size > 5.megabytes
    end
    
end
