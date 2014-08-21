class WifisController < ApplicationController
    before_filter :authenticate_user!
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
    @user = current_user
    @groups = Group.where(group_type: "public")
    @groups << current_user.groups
    @groups.flatten!.uniq!

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wifi }
    end
  end

  # GET /wifis/1/edit
  def edit
    @wifi = Wifi.find(params[:id])
    # @reviews = @wifi.reviews.order(:created_at).pages(params[:page])
    @reviews = @wifi.reviews.page(params[:page])
    @groups = @wifi.groups
  end

  # POST /wifis
  # POST /wifis.json
  def create
    
    @wifi = Wifi.new(params[:wifi])
  
    respond_to do |format|
      if @wifi.save
           @wifi.users << current_user
            groups_to_wifi =  params[:user][:group_ids]

          groups_to_wifi.each do |group|
            @wifi.groups << Group.find(group)
            @wifi.save
          end
        
        format.html { redirect_to edit_wifi_path(@wifi), notice: 'Wifi was successfully created.' }
        format.json { render json: edit_wifi_path(@wifi), status: :created, location: @wifi }
      else
       

        format.html { redirect_to new_wifi_path }
        format.json { redirect_to new_wifi_path json: @wifi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wifis/1
  # PUT /wifis/1.json
  def update
    @wifi = Wifi.find(params[:id])

    respond_to do |format|
      if @wifi.update_attributes(params[:wifi])
        format.html { redirect_to edit_wifi_path(@wifi), notice: 'Wifi was successfully updated.' }
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

  def add_favourite

    @wifi = Wifi.find(params[:id])
    
    if @wifi.users.include? current_user
      redirect_to user_path(current_user), notice: 'This is already one of your favourites'
     
    else
      @wifi.users << current_user
       @wifi.save
      
      redirect_to user_path(current_user), notice: 'You have successfully made this a favourite'
      
    end
  end
end
