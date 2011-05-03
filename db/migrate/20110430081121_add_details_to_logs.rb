class AddDetailsToLogs < ActiveRecord::Migration
  def self.up
    add_column :logs, :country, :string
    add_column :logs, :state, :string
    add_column :logs, :rating, :decimal
    add_column :logs, :longitude, :decimal
    add_column :logs, :latitude, :decimal
  end

  def self.down
    remove_column :logs, :latitude
    remove_column :logs, :longitude
    remove_column :logs, :rating
    remove_column :logs, :state
    remove_column :logs, :country
  end
end
