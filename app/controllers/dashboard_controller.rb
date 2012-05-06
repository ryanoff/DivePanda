class DashboardController < ApplicationController
  before_filter :require_authentication

  def show

# Find all examples
#@dives = Dive.all
#Person.all # returns an array of objects for all the rows fetched by SELECT * FROM people
#Person.where(["category IN (?)", categories]).limit(50).all
#Person.where({ :friends => ["Bob", "Steve", "Fred"] }).all
#Person.offset(10).limit(10).all
#Person.includes([:account, :friends]).all
#Person.group("category").all

    @dives = Dive.where(:user_id => current_user.identifier) 

    @facebook = Facebook.find(:first, :conditions => [ "identifier", current_user.identifier])    
    #not really working, should be using Facebook.where as with dives. Need to update profile and dives controller
    #@facebook = Facebook.where('identifier', current_user.identifier)
  
# Debugging Example  

# @test = current_user.identifier  
# raise @dives.inspect    
# raise @facebook.inspect    
# logger.debug "****"
# logger.debug "@facebook is: #{@facebook}"
# http://bit.ly/JyHeUp


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dives }
    end

  end

end
