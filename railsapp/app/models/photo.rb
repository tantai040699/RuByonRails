class Photo < ApplicationRecord
    has_many :albums_photos, dependent: :destroy
    has_many :albums, through: :albums_photos
   
    
    belongs_to :user,  counter_cache: :photos_count
    has_many :reactions ,as: :react, dependent: :destroy

    # validates :title, :desc, :status, :image, presence: true
    # validates :title, length: {maximum:140}
    # validates :desc, length: {maximum:300}
    # validates :status, acceptance: {accept: ['1','0']}
    # validates :image, format: {with: /\.(png|jpeq|gif)\Z/i}
    # validate :image_size_validation
    

    #upload picture
    mount_uploader :image, ImageUploader
    
    private
    def image_size_validation
        errors[:image] << "should be less than 5MB" if :image.size > 5.megabytes
    end
    
end
