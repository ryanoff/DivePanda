class ProfilesController < ApplicationController
  before_filter :require_authentication

  def show
      @facebook = Facebook.where(:identifier => current_user.identifier).first
      @user = User.where(:facebook_id => current_user.identifier).first
      @dive_count = Dive.where(:user_id => @user.id).count
      total_minutes = Dive.where(:user_id => @user.id).sum(:bottomtime)
      @dive_time = Time.at(total_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"
  end
end
