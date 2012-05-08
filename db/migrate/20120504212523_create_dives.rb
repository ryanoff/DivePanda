class CreateDives < ActiveRecord::Migration
  def self.up
    create_table :dives do |t|
      
      t.integer :user_id
      t.string :name
      t.text :description
      t.text :comments
      t.text :directions
      t.string :city
      t.string :state
      t.string :country
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
      t.decimal :rating

      t.timestamps
    end

    add_index :dives, :user_id
  end

  def self.down
    drop_table :dives
  end
end
