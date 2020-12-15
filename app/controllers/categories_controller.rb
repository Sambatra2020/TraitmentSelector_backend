class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]
  before_action :authorized, only: [:auto_login]

  # GET /categories
  def index
    @categories = Category.all
    @treatments_per_categorie={}
    @categories.each do |categorie|
      @treatments_per_categorie[categorie.id]=categorie.treatments
    end
    render json: {categories:@categories,treatments_per_categorie:@treatments_per_categorie}
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:labelle_categorie,:categorie_french,:categorie_malagasy)
    end
end
