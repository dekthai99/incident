class WildlivesController < ApplicationController
  # GET /wildlives
  # GET /wildlives.xml
  def index
    @wildlives = Wildlife.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wildlives }
    end
  end

  # GET /wildlives/1
  # GET /wildlives/1.xml
  def show
    @wildlife = Wildlife.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wildlife }
    end
  end

  # GET /wildlives/new
  # GET /wildlives/new.xml
  def new
    @wildlife = Wildlife.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wildlife }
    end
  end

  # GET /wildlives/1/edit
  def edit
    @wildlife = Wildlife.find(params[:id])
  end

  # POST /wildlives
  # POST /wildlives.xml
  def create
    @wildlife = Wildlife.new(params[:wildlife])

    respond_to do |format|
      if @wildlife.save
        flash[:notice] = 'Wildlife was successfully created.'
        format.html { redirect_to(@wildlife) }
        format.xml  { render :xml => @wildlife, :status => :created, :location => @wildlife }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wildlife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wildlives/1
  # PUT /wildlives/1.xml
  def update
    @wildlife = Wildlife.find(params[:id])

    respond_to do |format|
      if @wildlife.update_attributes(params[:wildlife])
        flash[:notice] = 'Wildlife was successfully updated.'
        format.html { redirect_to(@wildlife) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wildlife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wildlives/1
  # DELETE /wildlives/1.xml
  def destroy
    @wildlife = Wildlife.find(params[:id])
    @wildlife.destroy

    respond_to do |format|
      format.html { redirect_to(wildlives_url) }
      format.xml  { head :ok }
    end
  end
end
