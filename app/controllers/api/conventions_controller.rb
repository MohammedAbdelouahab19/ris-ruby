# app/controllers/api/conventions_controller.rb
module Api
  class ConventionsController < ApplicationController
    def index
      @conventions = Convention.all
      render json: @conventions
    end

    def show
      render json: @convention
    end

    def create
      @convention = Convention.new(convention_params)
      if @convention.save
        render json: @convention, status: :created
      else
        render json: @convention.errors, status: :unprocessable_entity
      end
    end

    def update
      if @convention.update(convention_params)
        render json: @convention
      else
        render json: @convention.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @convention.destroy
      head :no_content
    end

    def base_collection
      @conventions = Convention.select(:id, :name)
      render json: @conventions
    end

    private

    def convention_params
      params.require(:convention).permit(:name)
    end
  end
end
