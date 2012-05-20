class Users::UsersController < ApplicationController
  def show
    @user = User.where(:id => current_user.id).first
    @user = User.where(:id => current_user.id).first

    #Count total dives and total dive time
    @dive_count = Dive.where(:user_id => current_user.id).count
    total_minutes = Dive.where(:user_id => current_user.id).sum(:bottomtime)
    @dive_time = Time.at(total_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"

  end
  
  def update
    @user = User.where(:id => current_user.id).first
    @user.update_attributes params[:user]
  end

  
    
end