class CreateDives < ActiveRecord::Migration
  def self.up
    drop_table :logs

    create_table :dives do |t|
      
      t.integer :facebook_id
      t.string :name
      t.text :description
      t.text :comments
      t.text :directions
      t.string :city
      t.decimal :longitude
      t.decimal :latitude
      t.string :weather
      t.string :equipment
      t.string :weight
      t.date :date
      t.time :starttime
      t.time :endtime
      t.integer :bottomtime
      t.string :units
      t.integer :depth
      t.string :temperature
      t.string :watertemp
      t.string :country
      t.decimal :rating
    
      t.timestamps
    end
  end

  def self.down
    drop_table :dives
    create_table :logs
  end
end
