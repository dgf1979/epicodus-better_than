class UpdateItems < ActiveRecord::Migration
  def change
    add_column :items, :rank, :integer, :default => 0
  end
end
