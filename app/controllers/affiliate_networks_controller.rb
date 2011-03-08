class AffiliateNetworksController < ApplicationController
  # GET /affiliate_networks
  # GET /affiliate_networks.xml
  def index
    @affiliate_networks = AffiliateNetwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @affiliate_networks }
    end
  end

  # GET /affiliate_networks/1
  # GET /affiliate_networks/1.xml
  def show
    @affiliate_network = AffiliateNetwork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @affiliate_network }
    end
  end

  # GET /affiliate_networks/new
  # GET /affiliate_networks/new.xml
  def new
    @affiliate_network = AffiliateNetwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @affiliate_network }
    end
  end

  # GET /affiliate_networks/1/edit
  def edit
    @affiliate_network = AffiliateNetwork.find(params[:id])
  end

  # POST /affiliate_networks
  # POST /affiliate_networks.xml
  def create
    @affiliate_network = AffiliateNetwork.new(params[:affiliate_network])

    respond_to do |format|
      if @affiliate_network.save
        format.html { redirect_to(@affiliate_network, :notice => 'Affiliate network was successfully created.') }
        format.xml  { render :xml => @affiliate_network, :status => :created, :location => @affiliate_network }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @affiliate_network.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /affiliate_networks/1
  # PUT /affiliate_networks/1.xml
  def update
    @affiliate_network = AffiliateNetwork.find(params[:id])

    respond_to do |format|
      if @affiliate_network.update_attributes(params[:affiliate_network])
        format.html { redirect_to(@affiliate_network, :notice => 'Affiliate network was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @affiliate_network.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /affiliate_networks/1
  # DELETE /affiliate_networks/1.xml
  def destroy
    @affiliate_network = AffiliateNetwork.find(params[:id])
    @affiliate_network.destroy

    respond_to do |format|
      format.html { redirect_to(affiliate_networks_url) }
      format.xml  { head :ok }
    end
  end
end
