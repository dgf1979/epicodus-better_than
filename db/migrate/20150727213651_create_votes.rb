class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :voted_up_item_id
      t.integer :voted_down_item_id
      t.timestamps null: false
    end
  end
end
