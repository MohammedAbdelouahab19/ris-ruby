class ReanimatorsController < ApplicationController
  before_action :set_reanimator, only: %i[ show update destroy ]

  # GET /reanimators
  def index
    @reanimators = Reanimator.all

    render json: @reanimators
  end

  # GET /reanimators/1
  def show
    render json: @reanimator
  end

  # POST /reanimators
  def create
    @reanimator = Reanimator.new(reanimator_params)

    if @reanimator.save
      render json: @reanimator, status: :created, location: @reanimator
    else
      render json: @reanimator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reanimators/1
  def update
    if @reanimator.update(reanimator_params)
      render json: @reanimator
    else
      render json: @reanimator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reanimators/1
  def destroy
    @reanimator.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reanimator
      @reanimator = Reanimator.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def reanimator_params
      params.expect(reanimator: [ :first_name, :last_name ])
    end
end
