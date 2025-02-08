class PathologiesController < ApplicationController
  before_action :set_pathology, only: %i[ show update destroy ]

  # GET /pathologies
  def index
    @pathologies = Pathology.all

    render json: @pathologies
  end

  # GET /pathologies/1
  def show
    render json: @pathology
  end

  # POST /pathologies
  def create
    @pathology = Pathology.new(pathology_params)

    if @pathology.save
      render json: @pathology, status: :created, location: @pathology
    else
      render json: @pathology.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pathologies/1
  def update
    if @pathology.update(pathology_params)
      render json: @pathology
    else
      render json: @pathology.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pathologies/1
  def destroy
    @pathology.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathology
      @pathology = Pathology.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pathology_params
      params.expect(pathology: [ :name, :pathology_zone_id, :pathology_category_id, :description ])
    end
end
