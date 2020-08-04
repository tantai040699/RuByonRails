class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.belongs_to :user
      t.string  :image
      t.text :title
      t.text :desc
      t.boolean :status 
      t.timestamps
    end
  end
end