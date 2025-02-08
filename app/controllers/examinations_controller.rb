class ExaminationsController < ApplicationController
  before_action :set_examination, only: %i[ show update destroy ]

  # GET /examinations
  def index
    @examinations = Examination.all

    render json: @examinations
  end

  # GET /examinations/1
  def show
    render json: @examination
  end

  # POST /examinations
  def create
    @examination = Examination.new(examination_params)

    if @examination.save
      render json: @examination, status: :created, location: @examination
    else
      render json: @examination.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examinations/1
  def update
    if @examination.update(examination_params)
      render json: @examination
    else
      render json: @examination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examinations/1
  def destroy
    @examination.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examination
      @examination = Examination.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def examination_params
      params.expect(examination: [ :patientWeight, :note, :patient_id, :service_id, :nurse_id, :Reanimator_id, :corresponding_id, :convention_id, :prescriber_id, :technical_id, :radiologist_id ])
    end
end
