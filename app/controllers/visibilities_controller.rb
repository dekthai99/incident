class VisibilitiesController < ApplicationController
  # GET /visibilities
  # GET /visibilities.xml
  def index
    @visibilities = Visibility.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @visibilities }
    end
  end

  # GET /visibilities/1
  # GET /visibilities/1.xml
  def show
    @visibility = Visibility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @visibility }
    end
  end

  # GET /visibilities/new
  # GET /visibilities/new.xml
  def new
    @visibility = Visibility.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @visibility }
    end
  end

  # GET /visibilities/1/edit
  def edit
    @visibility = Visibility.find(params[:id])
  end

  # POST /visibilities
  # POST /visibilities.xml
  def create
    @visibility = Visibility.new(params[:visibility])

    respond_to do |format|
      if @visibility.save
        flash[:notice] = 'Visibility was successfully created.'
        format.html { redirect_to(@visibility) }
        format.xml  { render :xml => @visibility, :status => :created, :location => @visibility }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @visibility.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /visibilities/1
  # PUT /visibilities/1.xml
  def update
    @visibility = Visibility.find(params[:id])

    respond_to do |format|
      if @visibility.update_attributes(params[:visibility])
        flash[:notice] = 'Visibility was successfully updated.'
        format.html { redirect_to(@visibility) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @visibility.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /visibilities/1
  # DELETE /visibilities/1.xml
  def destroy
    @visibility = Visibility.find(params[:id])
    @visibility.destroy

    respond_to do |format|
      format.html { redirect_to(visibilities_url) }
      format.xml  { head :ok }
    end
  end
end
