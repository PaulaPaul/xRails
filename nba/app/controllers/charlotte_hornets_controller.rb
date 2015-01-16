class CharlotteHornetsController < ApplicationController
  before_action :set_charlotte_hornet, only: [:show, :edit, :update, :destroy]

  # GET /charlotte_hornets
  # GET /charlotte_hornets.json
  def index
    @charlotte_hornets = CharlotteHornet.all
  end

  # GET /charlotte_hornets/1
  # GET /charlotte_hornets/1.json
  def show
  end

  # GET /charlotte_hornets/new
  def new
    @charlotte_hornet = CharlotteHornet.new
  end

  # GET /charlotte_hornets/1/edit
  def edit
  end

  # POST /charlotte_hornets
  # POST /charlotte_hornets.json
  def create
    @charlotte_hornet = CharlotteHornet.new(charlotte_hornet_params)

    respond_to do |format|
      if @charlotte_hornet.save
        format.html { redirect_to @charlotte_hornet, notice: 'Charlotte hornet was successfully created.' }
        format.json { render :show, status: :created, location: @charlotte_hornet }
      else
        format.html { render :new }
        format.json { render json: @charlotte_hornet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charlotte_hornets/1
  # PATCH/PUT /charlotte_hornets/1.json
  def update
    respond_to do |format|
      if @charlotte_hornet.update(charlotte_hornet_params)
        format.html { redirect_to @charlotte_hornet, notice: 'Charlotte hornet was successfully updated.' }
        format.json { render :show, status: :ok, location: @charlotte_hornet }
      else
        format.html { render :edit }
        format.json { render json: @charlotte_hornet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charlotte_hornets/1
  # DELETE /charlotte_hornets/1.json
  def destroy
    @charlotte_hornet.destroy
    respond_to do |format|
      format.html { redirect_to charlotte_hornets_url, notice: 'Charlotte hornet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charlotte_hornet
      @charlotte_hornet = CharlotteHornet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charlotte_hornet_params
      params.require(:charlotte_hornet).permit(:name, :number, :position, :college)
    end
end
