class ReviewsController < ApplicationController
    before_filter :authenticate_user!
  # GET /reviews
  # GET /reviews.json
  def index

     @reviews = Wifi.find(params[:wifi_id]).reviews.order(:created_at).page(params[:page])
     @wifi = Wifi.find(params[:wifi_id])
    # @reviews = Review.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reviews }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Wifi.find(params[:wifi_id]).reviews.find(params[:id])
    @wifi = Wifi.find(params[:wifi_id])
    # @review = @wifi.reviews.new(params[:review])
    # @review =Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new

    @review = Review.new
    @wifi = Wifi.find(params[:wifi_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/1/edit
  def edit
    @review = Wifi.find(params[:wifi_id]).reviews.find(params[:id])
    @wifi = Wifi.find(params[:wifi_id])

    # @review = Review.find(params[:id])

  end

  # POST /reviews
  # POST /reviews.json
  def create
    @wifi = Wifi.find(params[:wifi_id])
    @review = @wifi.reviews.new(params[:review])
    @review.user_id = current_user.id


    respond_to do |format|
      if @review.save
        format.html { redirect_to edit_wifi_path(@wifi), notice: 'Review was successfully created.' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { render action: "new" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.json
  def update
    @review = Wifi.find(params[:wifi_id]).reviews.find(params[:id])
    @wifi = Wifi.find(params[:wifi_id])

    # @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to wifi_review_path(@wifi, @review), notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url }
      format.json { head :no_content }
    end
  end
end
