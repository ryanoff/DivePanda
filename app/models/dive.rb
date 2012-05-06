class Dive < ActiveRecord::Base
  belongs_to :facebook

  validates :name,  :presence => true
  validates :description, :presence => true,
                   :length => { :minimum => 5 }

end