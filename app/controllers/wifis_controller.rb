class WifisController < ApplicationController
  # GET /wifis
  # GET /wifis.json
  def index

    @q = Wifi.search(params[:q])
    @wifis = @q.result(distinct: true)
     @wifis = Wifi.order(:created_at).page(params[:page])

   
    # @wifis = Wifi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wifis }
    end
  end

  # GET /wifis/1
  # GET /wifis/1.json
  def show
    @wifi = Wifi.find(params[:id])
    @reviews = @wifi.reviews

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wifi }
    end
  end

  # GET /wifis/new
  # GET /wifis/new.json
  def new
    @wifi = Wifi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wifi }
    end
  end

  # GET /wifis/1/edit
  def edit
    @wifi = Wifi.find(params[:id])
  end

  # POST /wifis
  # POST /wifis.json
  def create
    @wifi = Wifi.new(params[:wifi])

    respond_to do |format|
      if @wifi.save
        format.html { redirect_to @wifi, notice: 'Wifi was successfully created.' }
        format.json { render json: @wifi, status: :created, location: @wifi }
      else
        format.html { render action: "new" }
        format.json { render json: @wifi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wifis/1
  # PUT /wifis/1.json
  def update
    @wifi = Wifi.find(params[:id])

    respond_to do |format|
      if @wifi.update_attributes(params[:wifi])
        format.html { redirect_to @wifi, notice: 'Wifi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wifi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wifis/1
  # DELETE /wifis/1.json
  def destroy
    @wifi = Wifi.find(params[:id])
    @wifi.destroy

    respond_to do |format|
      format.html { redirect_to wifis_url }
      format.json { head :no_content }
    end
  end
end
