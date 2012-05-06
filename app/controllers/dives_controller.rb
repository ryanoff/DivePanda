class DivesController < ApplicationController
  # GET /dives
  # GET /dives.xml
  def index
    #@dives = Dive.all
    @dives = Dive.where(:user_id => current_user.identifier) 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dives }
    end
  end

  # GET /dives/1
  # GET /dives/1.xml
  def show
    @dive = Dive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dive }
    end
  end

  # GET /dives/new
  # GET /dives/new.xml
  def new
    @dive = Dive.new
    
    @facebook = Facebook.find(:first, :conditions => [ "id", current_user.id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dive }
    end
  end

  # GET /dives/1/edit
  def edit
    @facebook = Facebook.find(:first, :conditions => [ "id", current_user.id])
    @dive = Dive.find(params[:id])
  end

  # POST /dives
  # POST /dives.xml
  def create
    @dive = Dive.new(params[:dive])

    respond_to do |format|
      if @dive.save
        format.html { redirect_to(@dive, :notice => 'Dive was successfully created.') }
        format.xml  { render :xml => @dive, :status => :created, :location => @dive }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dives/1
  # PUT /dives/1.xml
  def update
    @dive = Dive.find(params[:id])

    respond_to do |format|
      if @dive.update_attributes(params[:dive])
        format.html { redirect_to(@dive, :notice => 'Dive was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dives/1
  # DELETE /dives/1.xml
  def destroy
    @dive = Dive.find(params[:id])
    @dive.destroy

    respond_to do |format|
      format.html { redirect_to(dives_url) }
      format.xml  { head :ok }
    end
  end
end
