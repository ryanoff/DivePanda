class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.string :name
      t.text :description
      t.text :comments
      t.text :directions
      t.string :city
      t.string :weather
      t.string :equipment
      t.date :date
      t.time :starttime
      t.time :endtime
      t.integer :bottomtime
      t.string :units
      t.integer :depth
      t.string :temperature
      t.string :watertemp

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
