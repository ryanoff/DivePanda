class DashboardController < ApplicationController
  before_filter :require_authentication

  def show
    @logs = Log.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logs }
    end
  end

end
