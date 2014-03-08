class HealthClubsController < ApplicationController
  before_action :set_health_club, only: [:show, :edit, :update, :destroy]

  # GET /health_clubs
  # GET /health_clubs.json
  def index
    @health_clubs = HealthClub.all
  end

  # GET /health_clubs/1
  # GET /health_clubs/1.json
  def show
  end

  # GET /health_clubs/new
  def new
    @health_club = HealthClub.new
  end

  # GET /health_clubs/1/edit
  def edit
  end

  # POST /health_clubs
  # POST /health_clubs.json
  def create
    @health_club = HealthClub.new(health_club_params)

    respond_to do |format|
      if @health_club.save
        format.html { redirect_to @health_club, notice: 'Health club was successfully created.' }
        format.json { render action: 'show', status: :created, location: @health_club }
      else
        format.html { render action: 'new' }
        format.json { render json: @health_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_clubs/1
  # PATCH/PUT /health_clubs/1.json
  def update
    respond_to do |format|
      if @health_club.update(health_club_params)
        format.html { redirect_to @health_club, notice: 'Health club was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @health_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_clubs/1
  # DELETE /health_clubs/1.json
  def destroy
    @health_club.destroy
    respond_to do |format|
      format.html { redirect_to health_clubs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_club
      @health_club = HealthClub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_club_params
      params.require(:health_club).permit(:name)
    end
end
