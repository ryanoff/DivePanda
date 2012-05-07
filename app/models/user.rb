class User < ActiveRecord::Base
  has_one :facebook
  has_many :dives
  has_many :subscriptions
  
  validates :email,  :presence => true

end
