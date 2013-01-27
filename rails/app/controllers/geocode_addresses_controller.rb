class GeocodeAddressesController < ApplicationController
  # GET /geocode_addresses
  # GET /geocode_addresses.json
  def index
    @geocode_addresses = GeocodeAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geocode_addresses }
    end
  end

  # GET /geocode_addresses/1
  # GET /geocode_addresses/1.json
  def show
    @geocode_address = GeocodeAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geocode_address }
    end
  end

  # GET /geocode_addresses/new
  # GET /geocode_addresses/new.json
  def new
    @geocode_address = GeocodeAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geocode_address }
    end
  end

  # GET /geocode_addresses/1/edit
  def edit
    @geocode_address = GeocodeAddress.find(params[:id])
  end

  # POST /geocode_addresses
  # POST /geocode_addresses.json
  def create
    @geocode_address = GeocodeAddress.new(params[:geocode_address])

    respond_to do |format|
      if @geocode_address.save
        format.html { redirect_to @geocode_address, notice: 'Geocode address was successfully created.' }
        format.json { render json: @geocode_address, status: :created, location: @geocode_address }
      else
        format.html { render action: "new" }
        format.json { render json: @geocode_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geocode_addresses/1
  # PUT /geocode_addresses/1.json
  def update
    @geocode_address = GeocodeAddress.find(params[:id])

    respond_to do |format|
      if @geocode_address.update_attributes(params[:geocode_address])
        format.html { redirect_to @geocode_address, notice: 'Geocode address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geocode_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geocode_addresses/1
  # DELETE /geocode_addresses/1.json
  def destroy
    @geocode_address = GeocodeAddress.find(params[:id])
    @geocode_address.destroy

    respond_to do |format|
      format.html { redirect_to geocode_addresses_url }
      format.json { head :no_content }
    end
  end
end
