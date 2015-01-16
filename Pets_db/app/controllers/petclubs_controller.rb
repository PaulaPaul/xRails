class PetclubsController < ApplicationController
  before_action :set_petclub, only: [:show, :edit, :update, :destroy]

  # GET /petclubs
  # GET /petclubs.json
  def index
    @petclubs = Petclub.all
  end

  # GET /petclubs/1
  # GET /petclubs/1.json
  def show
  end

  # GET /petclubs/new
  def new
    @petclub = Petclub.new
  end

  # GET /petclubs/1/edit
  def edit
  end

  # POST /petclubs
  # POST /petclubs.json
  def create
    @petclub = Petclub.new(petclub_params)

    respond_to do |format|
      if @petclub.save
        format.html { redirect_to @petclub, notice: 'Petclub was successfully created.' }
        format.json { render :show, status: :created, location: @petclub }
      else
        format.html { render :new }
        format.json { render json: @petclub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petclubs/1
  # PATCH/PUT /petclubs/1.json
  def update
    respond_to do |format|
      if @petclub.update(petclub_params)
        format.html { redirect_to @petclub, notice: 'Petclub was successfully updated.' }
        format.json { render :show, status: :ok, location: @petclub }
      else
        format.html { render :edit }
        format.json { render json: @petclub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petclubs/1
  # DELETE /petclubs/1.json
  def destroy
    @petclub.destroy
    respond_to do |format|
      format.html { redirect_to petclubs_url, notice: 'Petclub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petclub
      @petclub = Petclub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petclub_params
      params.require(:petclub).permit(:name, :description)
    end
end
