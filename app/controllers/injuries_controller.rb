class InjuriesController < ApplicationController
  # GET /injuries
  # GET /injuries.xml
  def index
    @injuries = Injury.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @injuries }
    end
  end

  # GET /injuries/1
  # GET /injuries/1.xml
  def show
    @injury = Injury.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @injury }
    end
  end

  # GET /injuries/new
  # GET /injuries/new.xml
  def new
    @injury = Injury.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @injury }
    end
  end

  # GET /injuries/1/edit
  def edit
    @injury = Injury.find(params[:id])
  end

  # POST /injuries
  # POST /injuries.xml
  def create
    @injury = Injury.new(params[:injury])

    respond_to do |format|
      if @injury.save
        flash[:notice] = 'Injury was successfully created.'
        format.html { redirect_to(@injury) }
        format.xml  { render :xml => @injury, :status => :created, :location => @injury }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @injury.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /injuries/1
  # PUT /injuries/1.xml
  def update
    @injury = Injury.find(params[:id])

    respond_to do |format|
      if @injury.update_attributes(params[:injury])
        flash[:notice] = 'Injury was successfully updated.'
        format.html { redirect_to(@injury) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @injury.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /injuries/1
  # DELETE /injuries/1.xml
  def destroy
    @injury = Injury.find(params[:id])
    @injury.destroy

    respond_to do |format|
      format.html { redirect_to(injuries_url) }
      format.xml  { head :ok }
    end
  end
end
