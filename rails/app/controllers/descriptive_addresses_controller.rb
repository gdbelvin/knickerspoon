class DescriptiveAddressesController < ApplicationController
  # GET /descriptive_addresses
  # GET /descriptive_addresses.json
  def index
    @descriptive_addresses = DescriptiveAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @descriptive_addresses }
    end
  end

  # GET /descriptive_addresses/1
  # GET /descriptive_addresses/1.json
  def show
    @descriptive_address = DescriptiveAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @descriptive_address }
    end
  end

  # GET /descriptive_addresses/new
  # GET /descriptive_addresses/new.json
  def new
    @descriptive_address = DescriptiveAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @descriptive_address }
    end
  end

  # GET /descriptive_addresses/1/edit
  def edit
    @descriptive_address = DescriptiveAddress.find(params[:id])
  end

  # POST /descriptive_addresses
  # POST /descriptive_addresses.json
  def create
    @descriptive_address = DescriptiveAddress.new(params[:descriptive_address])

    respond_to do |format|
      if @descriptive_address.save
        format.html { redirect_to @descriptive_address, notice: 'Descriptive address was successfully created.' }
        format.json { render json: @descriptive_address, status: :created, location: @descriptive_address }
      else
        format.html { render action: "new" }
        format.json { render json: @descriptive_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /descriptive_addresses/1
  # PUT /descriptive_addresses/1.json
  def update
    @descriptive_address = DescriptiveAddress.find(params[:id])

    respond_to do |format|
      if @descriptive_address.update_attributes(params[:descriptive_address])
        format.html { redirect_to @descriptive_address, notice: 'Descriptive address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @descriptive_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptive_addresses/1
  # DELETE /descriptive_addresses/1.json
  def destroy
    @descriptive_address = DescriptiveAddress.find(params[:id])
    @descriptive_address.destroy

    respond_to do |format|
      format.html { redirect_to descriptive_addresses_url }
      format.json { head :no_content }
    end
  end
end
