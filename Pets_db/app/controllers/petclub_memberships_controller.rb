class PetclubMembershipsController < ApplicationController
  before_action :set_petclub_membership, only: [:show, :edit, :update, :destroy]

  # GET /petclub_memberships
  # GET /petclub_memberships.json
  def index
    @petclub_memberships = PetclubMembership.all
  end

  # GET /petclub_memberships/1
  # GET /petclub_memberships/1.json
  def show
  end

  # GET /petclub_memberships/new
  def new
    @petclub_membership = PetclubMembership.new
  end

  # GET /petclub_memberships/1/edit
  def edit
  end

  # POST /petclub_memberships
  # POST /petclub_memberships.json
  def create
    @petclub_membership = PetclubMembership.new(petclub_membership_params)

    respond_to do |format|
      if @petclub_membership.save
        format.html { redirect_to @petclub_membership, notice: 'Petclub membership was successfully created.' }
        format.json { render :show, status: :created, location: @petclub_membership }
      else
        format.html { render :new }
        format.json { render json: @petclub_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petclub_memberships/1
  # PATCH/PUT /petclub_memberships/1.json
  def update
    respond_to do |format|
      if @petclub_membership.update(petclub_membership_params)
        format.html { redirect_to @petclub_membership, notice: 'Petclub membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @petclub_membership }
      else
        format.html { render :edit }
        format.json { render json: @petclub_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petclub_memberships/1
  # DELETE /petclub_memberships/1.json
  def destroy
    @petclub_membership.destroy
    respond_to do |format|
      format.html { redirect_to petclub_memberships_url, notice: 'Petclub membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petclub_membership
      @petclub_membership = PetclubMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petclub_membership_params
      params.require(:petclub_membership).permit(:primary_contact, :pet_name, :petclub_id, :owner_id)
    end
end
