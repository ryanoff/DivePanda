class ProfilesController < ApplicationController
  before_filter :require_authentication

  def show
      @facebook = Facebook.find(:first, :conditions => [ "identifier", current_user.identifier])
  end
end
