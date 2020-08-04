class CreatePhotoAlbum < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_albums, id: false do |t|
      t.belongs_to :photo
      t.belongs_to :album
    end
  end
end
