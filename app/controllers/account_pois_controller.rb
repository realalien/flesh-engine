class AccountPoisController < ApplicationController
  # GET /account_pois
  # GET /account_pois.json
  def index
    @account_pois = AccountPoi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @account_pois }
    end
  end

  # GET /account_pois/1
  # GET /account_pois/1.json
  def show
    @account_poi = AccountPoi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account_poi }
    end
  end

  # GET /account_pois/new
  # GET /account_pois/new.json
  def new
    @account_poi = AccountPoi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account_poi }
    end
  end

  # GET /account_pois/1/edit
  def edit
    @account_poi = AccountPoi.find(params[:id])
  end

  # POST /account_pois
  # POST /account_pois.json
  def create
    @account_poi = AccountPoi.new(params[:account_poi])

    respond_to do |format|
      if @account_poi.save
        format.html { redirect_to @account_poi, notice: 'Account poi was successfully created.' }
        format.json { render json: @account_poi, status: :created, location: @account_poi }
      else
        format.html { render action: "new" }
        format.json { render json: @account_poi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /account_pois/1
  # PUT /account_pois/1.json
  def update
    @account_poi = AccountPoi.find(params[:id])

    respond_to do |format|
      if @account_poi.update_attributes(params[:account_poi])
        format.html { redirect_to @account_poi, notice: 'Account poi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @account_poi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_pois/1
  # DELETE /account_pois/1.json
  def destroy
    @account_poi = AccountPoi.find(params[:id])
    @account_poi.destroy

    respond_to do |format|
      format.html { redirect_to account_pois_url }
      format.json { head :no_content }
    end
  end
end
