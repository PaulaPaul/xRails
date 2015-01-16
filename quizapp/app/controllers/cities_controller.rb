class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  include ApplicationHelper

  #define an Action for You Won that will list all the cities
  # GET /cities/youwon
  def youwon
    @cities = City.all
  end

  #define an Action for play again that will clear out all the previous answers
  # GET /cities/playagain
  def playagain
    # clear out the previous answers
    City.delete_all
    # redirect_to 'new_city_path' to start again
    redirect_to :controller => "cities", :action => 'new'
  end

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
    @cities = City.all
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @message = ""

    @city = City.new(city_params)

    # use this to see if they enter a city name that is a duplicate
    @cities = City.all

    #see if the answer is correct and not a duplicate
    correct = check_answer(@city.name, 'city')
    is_dup = check_for_dup(@city.name,@cities)

    #set messages for the cases of duplicates or wrong answers
    if !correct
      @message = "Wrong guess!  Try again..."
    elsif is_dup
      @message = "You already got that one!  Try again..."
    end

    respond_to do |format|
      if @cities.count < 3 && correct == true && is_dup == false && @city.save
        #format.html { redirect_to @city, notice: 'Success!  Your guess was stored for future reference below.' }
        format.html { redirect_to new_city_path, notice: 'Success! Your guess was stored for future reference below.' }
        format.json { render :show, status: :created, location: @city }
      elsif @cities.count == 3 && correct == true && is_dup == false && @city.save
        format.html { redirect_to youwon_path, notice: 'Success!  You won!' }
        format.json { render :show, status: :created, location: @city }
      else 
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name)
    end
end
