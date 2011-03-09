class TrafficSourcesController < ApplicationController
  # GET /traffic_sources
  # GET /traffic_sources.xml
  def index
    @traffic_sources = TrafficSource.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @traffic_sources }
    end
  end

  # GET /traffic_sources/1
  # GET /traffic_sources/1.xml
  def show
    @traffic_source = TrafficSource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @traffic_source }
    end
  end

  # GET /traffic_sources/new
  # GET /traffic_sources/new.xml
  def new
    @traffic_source = TrafficSource.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @traffic_source }
    end
  end

  # GET /traffic_sources/1/edit
  def edit
    @traffic_source = TrafficSource.find(params[:id])
  end

  # POST /traffic_sources
  # POST /traffic_sources.xml
  def create
    @traffic_source = TrafficSource.new(params[:traffic_source])

    respond_to do |format|
      if @traffic_source.save
        format.html { redirect_to(@traffic_source, :notice => 'Traffic source was successfully created.') }
        format.xml  { render :xml => @traffic_source, :status => :created, :location => @traffic_source }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @traffic_source.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /traffic_sources/1
  # PUT /traffic_sources/1.xml
  def update
    @traffic_source = TrafficSource.find(params[:id])

    respond_to do |format|
      if @traffic_source.update_attributes(params[:traffic_source])
        format.html { redirect_to(@traffic_source, :notice => 'Traffic source was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @traffic_source.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /traffic_sources/1
  # DELETE /traffic_sources/1.xml
  def destroy
    @traffic_source = TrafficSource.find(params[:id])
    @traffic_source.destroy

    respond_to do |format|
      format.html { redirect_to(traffic_sources_url) }
      format.xml  { head :ok }
    end
  end
end
