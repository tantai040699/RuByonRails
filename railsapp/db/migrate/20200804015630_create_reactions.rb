class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.belongs_to :photo
      t.belongs_to :album
      t.timestamps
    end
  end
end
