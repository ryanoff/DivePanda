class AddWeightToLog < ActiveRecord::Migration
  def self.up
    add_column :logs, :weight, :string
  end

  def self.down
    remove_column :logs, :weight
  end
end
