class HomeController < ApplicationController
  def index
  end
  
  def dashboard
  
    @user = User.where(:id => current_user.id).first
    @dives = Dive.where(:user_id => @user.id)
    
    #Count total dives and total dive time
    @dive_count = Dive.where(:user_id => current_user.id).count
    total_minutes = Dive.where(:user_id => current_user.id).sum(:bottomtime)
    @dive_time = Time.at(total_minutes*60).utc.strftime("%H:%M") #=> "01:00:00"

#raise @user.inspect

    #@dives = Dive.all
    #@dives = Dive.find(:all, :order => "id desc", :limit => 5).reverse!
    
    # Debugging Examples
    #raise @user.inspect
    # raise current_user.inspect
    # @test = current_user.identifier  
    # raise @dives.inspect    
    # raise @facebook.inspect    
    # logger.debug "****"
    # logger.debug "@facebook is: #{@facebook}"
    # http://bit.ly/JyHeUp
    
    # Find all examples
    # Person.all # returns an array of objects for all the rows fetched by SELECT * FROM people
    # Person.where(["category IN (?)", categories]).limit(50).all
    # Person.where({ :friends => ["Bob", "Steve", "Fred"] }).all
    # Person.offset(10).limit(10).all
    # Person.includes([:account, :friends]).all
    # Person.group("category").all
  end
  
end
