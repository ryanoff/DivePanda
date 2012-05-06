class ChangeFacebookIdToUserId < ActiveRecord::Migration
  def self.up
      rename_column :dives, :facebook_id, :user_id
  end

  def self.down
      rename_column :dives, :user_id, :facebook_id
  end
end
