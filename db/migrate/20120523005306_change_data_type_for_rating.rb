class ChangeDataTypeForRating < ActiveRecord::Migration
  
  def self.up
    change_table :dives do |t|
      t.change :rating, :integer
    end
  end

  def self.down
    change_table :dives do |t|
      t.change :rating, :decimal
    end
  end
  
end
