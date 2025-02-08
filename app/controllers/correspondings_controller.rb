class CorrespondingsController < ApplicationController
  before_action :set_corresponding, only: %i[ show update destroy ]

  # GET /correspondings
  def index
    @correspondings = Corresponding.all

    render json: @correspondings
  end

  # GET /correspondings/1
  def show
    render json: @corresponding
  end

  # POST /correspondings
  def create
    @corresponding = Corresponding.new(corresponding_params)

    if @corresponding.save
      render json: @corresponding, status: :created, location: @corresponding
    else
      render json: @corresponding.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /correspondings/1
  def update
    if @corresponding.update(corresponding_params)
      render json: @corresponding
    else
      render json: @corresponding.errors, status: :unprocessable_entity
    end
  end

  # DELETE /correspondings/1
  def destroy
    @corresponding.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corresponding
      @corresponding = Corresponding.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def corresponding_params
      params.expect(corresponding: [ :name ])
    end
end
