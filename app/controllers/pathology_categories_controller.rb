class PathologyCategoriesController < ApplicationController
  before_action :set_pathology_category, only: %i[ show update destroy ]

  # GET /pathology_categories
  def index
    @pathology_categories = PathologyCategory.all

    render json: @pathology_categories
  end

  # GET /pathology_categories/1
  def show
    render json: @pathology_category
  end

  # POST /pathology_categories
  def create
    @pathology_category = PathologyCategory.new(pathology_category_params)

    if @pathology_category.save
      render json: @pathology_category, status: :created, location: @pathology_category
    else
      render json: @pathology_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pathology_categories/1
  def update
    if @pathology_category.update(pathology_category_params)
      render json: @pathology_category
    else
      render json: @pathology_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pathology_categories/1
  def destroy
    @pathology_category.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathology_category
      @pathology_category = PathologyCategory.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pathology_category_params
      params.expect(pathology_category: [ :name ])
    end
end
