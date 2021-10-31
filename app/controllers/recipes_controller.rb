class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: RecipeSerializer.new(@recipes)
  end

  # GET /recipes/1
  def show
    render json: @recipe.slice(:id, :name, :date_attempted, :brew_method_id, :brew_method_name, :coffee_bean_id, :coffee_bean_name, :roaster_name, :roast_date, :grind, :coffee_in_grams, :water_in_grams, :temperature, :filter, :time, :bloom_time, :notes, :deletable, :whole_bean, :elevation)
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(:name, :date_attempted, :brew_method_id, :coffee_bean_id, :roast_date, :grind, :coffee_in_grams, :water_in_grams, :temperature, :filter, :time, :bloom_time, :notes, :deletable, :whole_bean, :elevation)
    end
end
