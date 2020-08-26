class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.belongs_to :user
      t.integer :react_id
      t.string :react_type
      t.timestamps
    end
  end
end
