class PathologyZonesController < ApplicationController
  before_action :set_pathology_zone, only: %i[ show update destroy ]

  # GET /pathology_zones
  def index
    @pathology_zones = PathologyZone.all

    render json: @pathology_zones
  end

  # GET /pathology_zones/1
  def show
    render json: @pathology_zone
  end

  # POST /pathology_zones
  def create
    @pathology_zone = PathologyZone.new(pathology_zone_params)

    if @pathology_zone.save
      render json: @pathology_zone, status: :created, location: @pathology_zone
    else
      render json: @pathology_zone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pathology_zones/1
  def update
    if @pathology_zone.update(pathology_zone_params)
      render json: @pathology_zone
    else
      render json: @pathology_zone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pathology_zones/1
  def destroy
    @pathology_zone.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathology_zone
      @pathology_zone = PathologyZone.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pathology_zone_params
      params.expect(pathology_zone: [ :name ])
    end
end
