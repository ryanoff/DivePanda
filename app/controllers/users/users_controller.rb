class Users::UsersController < ApplicationController
  def profile
    @user = User.where(:id => current_user.id).first
    @dives = Dive.where(:user_id => current_user.id)

    #Count total dives and total dive time
    @dive_count = @dives.count
    total_minutes = @dives.sum(:bottomtime)
    @dive_time = Time.at(total_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"
    
    # This year
    @dives_this_year = @dives.where("date >= ?", Time.now.at_beginning_of_year).count
    #@dives_this_year = Dive.where(year(:date) = ?, '#{DateTime.now.year}')
    this_year_minutes = @dives.where("date >= ?", Time.now.at_beginning_of_year).sum(:bottomtime)
    @dive_time_this_year = Time.at(this_year_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"

    # Averages
    @average_dive_depth = @dives.sum(:depth) / @dive_count 
    average_time = total_minutes / @dive_count
    @average_dive_time = Time.at(average_time*60).utc.strftime("%H:%M") #=> "01:00:00"


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