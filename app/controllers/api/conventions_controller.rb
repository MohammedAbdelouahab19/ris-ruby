# app/controllers/api/conventions_controller.rb
module Api
  class ConventionsController < ApplicationController
    before_action :set_convention, only: [:show, :update, :destroy]

    # GET /api/conventions
    def index
      @conventions = Convention.all
      render json: @conventions
    end

    # GET /api/conventions/:id
    def show
      render json: @convention
    end

    # POST /api/conventions
    def create
      @convention = Convention.new(convention_params)
      if @convention.save
        render json: @convention, status: :created
      else
        render json: @convention.errors, status: :unprocessable_entity
      end
    end

    # PUT /api/conventions/:id
    def update
      if @convention.update(convention_params)
        render json: @convention
      else
        render json: @convention.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/conventions/:id
    def destroy
      @convention.destroy
      head :no_content
    end

    # Custom route: GET /api/base/conventions
    def base_collection
      @conventions = Convention.select(:id, :name)
      render json: @conventions
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_convention
      @convention = Convention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def convention_params
      params.require(:convention).permit(:name)
    end
  end
end
