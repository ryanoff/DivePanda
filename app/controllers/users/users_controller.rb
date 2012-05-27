class Users::UsersController < ApplicationController
  def show
    @user = User.where(:id => current_user.id).first
    @user = User.where(:id => current_user.id).first

    #Count total dives and total dive time
    @dive_count = Dive.where(:user_id => current_user.id).count
    total_minutes = Dive.where(:user_id => current_user.id).sum(:bottomtime)
    @dive_time = Time.at(total_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"
    
    # This year
    @dives_this_year = Dive.where("date >= ?", Time.now.at_beginning_of_year).count
    #@dives_this_year = Dive.where(year(:date) = ?, '#{DateTime.now.year}')
    this_year_minutes = Dive.where("date >= ?", Time.now.at_beginning_of_year).sum(:bottomtime)
    @dive_time_this_year = Time.at(this_year_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"



  end
  
  def update
    @user = User.where(:id => current_user.id).first
    @user.update_attributes params[:user]
  
    flash[:notice] = "Your profile has been updated"

    respond_to do |format|
      format.html # update.html.erb
      format.json { render :json => @user }
    end
  
  end

  
    
end