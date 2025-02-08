class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: %i[ show update destroy ]

  # GET /establishments
  def index
    @establishments = Establishment.all

    render json: @establishments
  end

  # GET /establishments/1
  def show
    render json: @establishment
  end

  # POST /establishments
  def create
    @establishment = Establishment.new(establishment_params)

    if @establishment.save
      render json: @establishment, status: :created, location: @establishment
    else
      render json: @establishment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /establishments/1
  def update
    if @establishment.update(establishment_params)
      render json: @establishment
    else
      render json: @establishment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /establishments/1
  def destroy
    @establishment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establishment
      @establishment = Establishment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def establishment_params
      params.expect(establishment: [ :name, :default_lang, :invoice_number_pattern, :receipt_number_pattern, :support_email, :city_id, :report_template_id ])
    end
end
