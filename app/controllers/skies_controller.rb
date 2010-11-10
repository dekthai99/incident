class SkiesController < ApplicationController
  # GET /skies
  # GET /skies.xml
  def index
    @skies = Sky.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skies }
    end
  end

  # GET /skies/1
  # GET /skies/1.xml
  def show
    @sky = Sky.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sky }
    end
  end

  # GET /skies/new
  # GET /skies/new.xml
  def new
    @sky = Sky.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sky }
    end
  end

  # GET /skies/1/edit
  def edit
    @sky = Sky.find(params[:id])
  end

  # POST /skies
  # POST /skies.xml
  def create
    @sky = Sky.new(params[:sky])

    respond_to do |format|
      if @sky.save
        flash[:notice] = 'Sky was successfully created.'
        format.html { redirect_to(@sky) }
        format.xml  { render :xml => @sky, :status => :created, :location => @sky }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sky.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skies/1
  # PUT /skies/1.xml
  def update
    @sky = Sky.find(params[:id])

    respond_to do |format|
      if @sky.update_attributes(params[:sky])
        flash[:notice] = 'Sky was successfully updated.'
        format.html { redirect_to(@sky) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sky.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skies/1
  # DELETE /skies/1.xml
  def destroy
    @sky = Sky.find(params[:id])
    @sky.destroy

    respond_to do |format|
      format.html { redirect_to(skies_url) }
      format.xml  { head :ok }
    end
  end
end
