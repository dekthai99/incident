class TimelostsController < ApplicationController
  # GET /timelosts
  # GET /timelosts.xml
  def index
    @timelosts = Timelost.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @timelosts }
    end
  end

  # GET /timelosts/1
  # GET /timelosts/1.xml
  def show
    @timelost = Timelost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timelost }
    end
  end

  # GET /timelosts/new
  # GET /timelosts/new.xml
  def new
    @timelost = Timelost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timelost }
    end
  end

  # GET /timelosts/1/edit
  def edit
    @timelost = Timelost.find(params[:id])
  end

  # POST /timelosts
  # POST /timelosts.xml
  def create
    @timelost = Timelost.new(params[:timelost])

    respond_to do |format|
      if @timelost.save
        flash[:notice] = 'Timelost was successfully created.'
        format.html { redirect_to(@timelost) }
        format.xml  { render :xml => @timelost, :status => :created, :location => @timelost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timelost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timelosts/1
  # PUT /timelosts/1.xml
  def update
    @timelost = Timelost.find(params[:id])

    respond_to do |format|
      if @timelost.update_attributes(params[:timelost])
        flash[:notice] = 'Timelost was successfully updated.'
        format.html { redirect_to(@timelost) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timelost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timelosts/1
  # DELETE /timelosts/1.xml
  def destroy
    @timelost = Timelost.find(params[:id])
    @timelost.destroy

    respond_to do |format|
      format.html { redirect_to(timelosts_url) }
      format.xml  { head :ok }
    end
  end
end
