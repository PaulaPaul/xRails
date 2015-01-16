class BallotsController < ApplicationController
  before_action :set_ballot, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_voter!

  # GET /ballots
  # GET /ballots.json
  def index
    @ballots = Ballot.all
  end

  # GET /ballots/1
  # GET /ballots/1.json
  def show
  end

  # GET /ballots/new
  def new
    @ballot = Ballot.new
  end

  # GET /ballots/1/edit
  def edit
  end

  # POST /ballots
  # POST /ballots.json
  def create
    @ballot = Ballot.new(ballot_params)

    respond_to do |format|
      if @ballot.save
        format.html { redirect_to @ballot, notice: 'Ballot was successfully created.' }
        format.json { render :show, status: :created, location: @ballot }
      else
        format.html { render :new }
        format.json { render json: @ballot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballots/1
  # PATCH/PUT /ballots/1.json
  def update
    respond_to do |format|
      if @ballot.update(ballot_params)
        format.html { redirect_to @ballot, notice: 'Ballot was successfully updated.' }
        format.json { render :show, status: :ok, location: @ballot }
      else
        format.html { render :edit }
        format.json { render json: @ballot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballots/1
  # DELETE /ballots/1.json
  def destroy
    @ballot.destroy
    respond_to do |format|
      format.html { redirect_to ballots_url, notice: 'Ballot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballot
      @ballot = Ballot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ballot_params
      params.require(:ballot).permit(:vote, :voter_id, :ballot_measure_id)
    end
end
