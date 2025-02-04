class Api::CategoriesController < ApplicationController
  # GET /api/categories
  def index
    @categories = Category.all
    render json: @categories
  end

  # GET /api/categories/:id
  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  # POST /api/categories
  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category, status: :created
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PUT /api/categories/:id
  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/categories/:id
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    head :no_content
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
