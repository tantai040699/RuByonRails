class AddCounterToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :follower_count, :int,  null: false, default: 0
    add_column :users, :following_count, :int,  null: false, default: 0
  end
end
