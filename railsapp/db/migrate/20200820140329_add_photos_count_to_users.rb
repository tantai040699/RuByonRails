class AddPhotosCountToUsers < ActiveRecord::Migration[6.0]
  def self.up
    add_column :users, :photos_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :users, :photos_count
  end
end
