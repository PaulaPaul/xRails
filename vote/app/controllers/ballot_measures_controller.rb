class BallotMeasuresController < ApplicationController
  before_action :set_ballot_measure, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_voter!

  # GET /ballot_measures
  # GET /ballot_measures.json
  def index
    @ballot_measures = BallotMeasure.all
  end

  # GET /ballot_measures/1
  # GET /ballot_measures/1.json
  def show
  end

  # GET /ballot_measures/new
  def new
    @ballot_measure = BallotMeasure.new
  end

  # GET /ballot_measures/1/edit
  def edit
  end

  # POST /ballot_measures
  # POST /ballot_measures.json
  def create
    @ballot_measure = BallotMeasure.new(ballot_measure_params)

    respond_to do |format|
      if @ballot_measure.save
        format.html { redirect_to @ballot_measure, notice: 'Ballot measure was successfully created.' }
        format.json { render :show, status: :created, location: @ballot_measure }
      else
        format.html { render :new }
        format.json { render json: @ballot_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballot_measures/1
  # PATCH/PUT /ballot_measures/1.json
  def update
    respond_to do |format|
      if @ballot_measure.update(ballot_measure_params)
        format.html { redirect_to @ballot_measure, notice: 'Ballot measure was successfully updated.' }
        format.json { render :show, status: :ok, location: @ballot_measure }
      else
        format.html { render :edit }
        format.json { render json: @ballot_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballot_measures/1
  # DELETE /ballot_measures/1.json
  def destroy
    @ballot_measure.destroy
    respond_to do |format|
      format.html { redirect_to ballot_measures_url, notice: 'Ballot measure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballot_measure
      @ballot_measure = BallotMeasure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ballot_measure_params
      params.require(:ballot_measure).permit(:number, :title, :funding)
    end
end
