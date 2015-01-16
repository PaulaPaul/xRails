class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  include ApplicationHelper

  #define an Action for You Won that will list all the states
  # GET /states/youwon
  def youwon
    @states = State.all
  end

  #define an Action for play again that will clear out all the previous answers
  # GET /states/playagain
  def playagain
    # clear out the previous answers
    State.delete_all
    # redirect_to 'new_state_path' to start again
    redirect_to :controller => "states", :action => 'new'
  end

  # GET /states
  # GET /states.json
  def index
    @states = State.all
  end

  # GET /states/1
  # GET /states/1.json
  def show
  end

  # GET /states/new
  def new
    @state = State.new
    @states = State.all
  end

  # GET /states/1/edit
  def edit
  end

  # POST /states
  # POST /states.json
  def create
    #this isn't really very DRY since this code appears in both the controllers for City and State
    #in the long run it would be cool to have one controller that could accomodate any type of quiz item...
    #but it's late so no refactoring tonight :)
    @message = ""

    @state = State.new(state_params)

    # use this to see if they enter a state name that is a duplicate
    @states = State.all

    #see if the answer is correct and not a duplicate
    correct = check_answer(@state.name, 'state')
    is_dup = check_for_dup(@state.name,@states)

    #set messages for the cases of duplicates or wrong answers
    if !correct
      @message = "Wrong guess!  Try again..."
    elsif is_dup
      @message = "You already got that one!  Try again..."
    end

    respond_to do |format|
      if @states.count < 49 && correct == true && is_dup == false && @state.save
        #format.html { redirect_to @state, notice: 'Success!  Your guess was stored for future reference below.' }
        format.html { redirect_to new_state_path, notice: 'Success! Your guess was stored for future reference below.' }
        format.json { render :show, status: :created, location: @state }
      elsif @states.count == 49 && correct == true && is_dup == false && @state.save
        format.html { redirect_to youwonstate_path, notice: 'Success!  You won!' }
        format.json { render :show, status: :created, location: @state }
      else 
        format.html { render :new }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /states/1
  # PATCH/PUT /states/1.json
  def update
    respond_to do |format|
      if @state.update(state_params)
        format.html { redirect_to @state, notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @state }
      else
        format.html { render :edit }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @state.destroy
    respond_to do |format|
      format.html { redirect_to states_url, notice: 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:name)
    end
end
