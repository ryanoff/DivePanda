class Dive < ActiveRecord::Base
  belongs_to :user

  validates :name,  :presence => true
  validates :description, :presence => true,
                   :length => { :minimum => 5 }

end