class PrescribersController < ApplicationController
  before_action :set_prescriber, only: %i[ show update destroy ]

  # GET /prescribers
  def index
    @prescribers = Prescriber.all

    render json: @prescribers
  end

  # GET /prescribers/1
  def show
    render json: @prescriber
  end

  # POST /prescribers
  def create
    @prescriber = Prescriber.new(prescriber_params)

    if @prescriber.save
      render json: @prescriber, status: :created, location: @prescriber
    else
      render json: @prescriber.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prescribers/1
  def update
    if @prescriber.update(prescriber_params)
      render json: @prescriber
    else
      render json: @prescriber.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prescribers/1
  def destroy
    @prescriber.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescriber
      @prescriber = Prescriber.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def prescriber_params
      params.expect(prescriber: [ :first_name, :last_name, :title, :structure_id, :speciality_id, :service_id, :email, :address, :phone_number ])
    end
end
