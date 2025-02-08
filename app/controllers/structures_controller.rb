class StructuresController < ApplicationController
  before_action :set_structure, only: %i[ show update destroy ]

  # GET /structures
  def index
    @structures = Structure.all

    render json: @structures
  end

  # GET /structures/1
  def show
    render json: @structure
  end

  # POST /structures
  def create
    @structure = Structure.new(structure_params)

    if @structure.save
      render json: @structure, status: :created, location: @structure
    else
      render json: @structure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /structures/1
  def update
    if @structure.update(structure_params)
      render json: @structure
    else
      render json: @structure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /structures/1
  def destroy
    @structure.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structure
      @structure = Structure.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def structure_params
      params.expect(structure: [ :name ])
    end
end
