class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: RecipeSerializer.new(@recipes)
  end

  # GET /recipes/1
  def show
    render json: @recipe.slice(:name, :brew_method_id, :brew_method_name, :temperature, :water_in_grams, :coffee_in_grams, :coffee_bean_id, :coffee_bean_name, :grind, :time, :filter, :bloom_time, :user_id, :username)
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
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
      params.require(:recipe).permit(:name, :user_id, :brew_method_id, :temperature, :water_in_grams, :coffee_in_grams, :coffee_beans_id, :grind, :time)
    end
end
