class Dive < ActiveRecord::Base
  attr_accessible :name, :user_id, :date, :name, :city, :state, :country, :depth, :starttime, :endtime, :bottomtime, :weather, :temperature, :watertemp, :equipment, :weight, :description, :comments, :directions, :rating, :longitude, :latitude, :units
  
  belongs_to :user

  validates :name,  :presence => true
  validates :description, :presence => true,
                   :length => { :minimum => 5 }

end
