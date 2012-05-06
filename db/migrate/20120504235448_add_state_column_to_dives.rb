class AddStateColumnToDives < ActiveRecord::Migration
  def self.up
    add_column :dives, :state, :string
  end

  def self.down
    remove_column :dives, :state
  end
end
