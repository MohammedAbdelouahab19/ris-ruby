class ModalityOptionsController < ApplicationController
  before_action :set_modality_option, only: %i[ show update destroy ]

  # GET /modality_options
  def index
    @modality_options = ModalityOption.all

    render json: @modality_options
  end

  # GET /modality_options/1
  def show
    render json: @modality_option
  end

  # POST /modality_options
  def create
    @modality_option = ModalityOption.new(modality_option_params)

    if @modality_option.save
      render json: @modality_option, status: :created, location: @modality_option
    else
      render json: @modality_option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /modality_options/1
  def update
    if @modality_option.update(modality_option_params)
      render json: @modality_option
    else
      render json: @modality_option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /modality_options/1
  def destroy
    @modality_option.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modality_option
      @modality_option = ModalityOption.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def modality_option_params
      params.expect(modality_option: [ :name ])
    end
end
