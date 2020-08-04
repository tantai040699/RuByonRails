class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.belongs_to :user
      t.integer :collection
      t.text :title
      t.text :desc
      t.timestamps
    end
  end
end
