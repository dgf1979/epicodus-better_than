class UpdateItemsRankDefault < ActiveRecord::Migration
  def change
    change_column :items, :rank, :integer, default: 100
  end
end
