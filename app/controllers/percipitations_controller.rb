class PercipitationsController < ApplicationController
  # GET /percipitations
  # GET /percipitations.xml
  def index
    @percipitations = Percipitation.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @percipitations }
    end
  end

  # GET /percipitations/1
  # GET /percipitations/1.xml
  def show
    @percipitation = Percipitation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @percipitation }
    end
  end

  # GET /percipitations/new
  # GET /percipitations/new.xml
  def new
    @percipitation = Percipitation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @percipitation }
    end
  end

  # GET /percipitations/1/edit
  def edit
    @percipitation = Percipitation.find(params[:id])
  end

  # POST /percipitations
  # POST /percipitations.xml
  def create
    @percipitation = Percipitation.new(params[:percipitation])

    respond_to do |format|
      if @percipitation.save
        flash[:notice] = 'Percipitation was successfully created.'
        format.html { redirect_to(@percipitation) }
        format.xml  { render :xml => @percipitation, :status => :created, :location => @percipitation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @percipitation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /percipitations/1
  # PUT /percipitations/1.xml
  def update
    @percipitation = Percipitation.find(params[:id])

    respond_to do |format|
      if @percipitation.update_attributes(params[:percipitation])
        flash[:notice] = 'Percipitation was successfully updated.'
        format.html { redirect_to(@percipitation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @percipitation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /percipitations/1
  # DELETE /percipitations/1.xml
  def destroy
    @percipitation = Percipitation.find(params[:id])
    @percipitation.destroy

    respond_to do |format|
      format.html { redirect_to(percipitations_url) }
      format.xml  { head :ok }
    end
  end
end
