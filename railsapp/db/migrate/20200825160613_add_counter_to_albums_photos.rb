class AddCounterToAlbumsPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :photos_count, :int,  null: false, default: 0
  end
end
