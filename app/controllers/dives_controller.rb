class DivesController < ApplicationController
  before_filter :authenticate_user!

  # GET /dives
  # GET /dives.json
  def index
    #@dives = Dive.all
    @user = User.where(:id => current_user.id).first
    @dives = Dive.where(:user_id => @user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dives }
    end
  end

  # GET /dives/1
  # GET /dives/1.json
  def show
    @dive = Dive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dive }
    end
  end

  # GET /dives/new
  # GET /dives/new.json
  def new
    @dive = Dive.new
    @user = User.where(:id => current_user.id).first

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dive }
    end
  end

  # GET /dives/1/edit
  def edit
    @dive = Dive.find(params[:id])
    @user = User.where(:id => current_user.id).first
  end

  # GET /dives/locations
  def locations
    @dives = Dive.all
    @user = User.where(:id => current_user.id).first
  end

  # POST /dives
  # POST /dives.json
  def create
    @dive = Dive.new(params[:dive])
    @user = User.where(:id => current_user.id).first

    respond_to do |format|
      if @dive.save
        format.html { redirect_to @dive, :notice => 'Dive was successfully created.' }
        format.json { render :json => @dive, :status => :created, :location => @dive }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dives/1
  # PUT /dives/1.json
  def update
    @dive = Dive.find(params[:id])

    respond_to do |format|
      if @dive.update_attributes(params[:dive])
        format.html { redirect_to @dive, :notice => 'Dive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dives/1
  # DELETE /dives/1.json
  def destroy
    @dive = Dive.find(params[:id])
    @dive.destroy

    respond_to do |format|
      format.html { redirect_to dives_url }
      format.json { head :no_content }
    end
  end
end
