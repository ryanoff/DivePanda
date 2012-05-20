class AddUnrecordedDivesToUser < ActiveRecord::Migration
  
  def self.up
    add_column(:users, :unrecorded_dives, :integer, :default => 0, :null => false)
    add_column(:users, :unrecorded_time, :time, :default => 0, :null => false)
    add_column(:dives, :dive_number, :integer)
  end

  def self.down
    remove_column(:users, :unrecorded_dives)
    remove_column(:users, :unrecorded_time)
    remove_column(:dives, :dive_number)
  end  
  
  
end
