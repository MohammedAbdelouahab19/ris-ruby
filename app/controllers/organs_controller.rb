class OrgansController < ApplicationController
  before_action :set_organ, only: %i[ show update destroy ]

  # GET /organs
  def index
    @organs = Organ.all

    render json: @organs
  end

  # GET /organs/1
  def show
    render json: @organ
  end

  # POST /organs
  def create
    @organ = Organ.new(organ_params)

    if @organ.save
      render json: @organ, status: :created, location: @organ
    else
      render json: @organ.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organs/1
  def update
    if @organ.update(organ_params)
      render json: @organ
    else
      render json: @organ.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organs/1
  def destroy
    @organ.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organ
      @organ = Organ.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def organ_params
      params.expect(organ: [ :name, :code, :region_id ])
    end
end
