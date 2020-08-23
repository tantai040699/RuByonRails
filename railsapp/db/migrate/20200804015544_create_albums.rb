class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.belongs_to :user
      t.integer :collection, default: 0
      t.text :title
      t.text :desc
      t.boolean :status, default: true
      t.timestamps
    end
  end
end
