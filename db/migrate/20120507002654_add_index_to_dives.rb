class AddIndexToDives < ActiveRecord::Migration
  
  def self.up
    add_column :dives, :user_id, :integer
    add_index :dives, :user_id
  end
  

  def self.down
    remove_column :dives, :user_id
  end
  
  
end
