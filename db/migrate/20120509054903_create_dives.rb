class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
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
  end
end
