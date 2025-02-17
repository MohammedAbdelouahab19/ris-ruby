class RegionsController < ApplicationController
  before_action :set_region, only: %i[ show update destroy ]

  # GET /regions
  def index
    @regions = Region.all

    render json: @regions
  end

  # GET /regions/1
  def show
    render json: @region
  end

  # POST /regions
  def create
    @region = Region.new(region_params)

    if @region.save
      render json: @region, status: :created, location: @region
    else
      render json: @region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regions/1
  def update
    if @region.update(region_params)
      render json: @region
    else
      render json: @region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /regions/1
  def destroy
    @region.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def region_params
      params.expect(region: [ :name, :code, :direction ])
    end
end
