class Users::UsersController < ApplicationController
  def show
    @user = User.where(:id => current_user.id).first
    @user = User.where(:id => current_user.id).first

    #Count total dives and total dive time
    @dive_count = Dive.where(:user_id => current_user.id).count
    total_minutes = Dive.where(:user_id => current_user.id).sum(:bottomtime)
    @dive_time = Time.at(total_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"
    
#@temp = Time.zone.now
#raise @temp

#@dives_this_year = Dive.where(:date >= ?, Time.now.year)
#@dives_this_year = Dive.where(:date.to_date.year => Time.now.year)

#where(:created_at => params[:date].to_date.beginning_of_month..params[:date].to_date.end_of_month).


raise @dives_this_year.inspect 

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