require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url, as: :json
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { brew_method_id: @recipe.brew_method_id, coffee_beans_id: @recipe.coffee_beans_id, grind: @recipe.grind, name: @recipe.name, temperature: @recipe.temperature, time: @recipe.time, user_id: @recipe.user_id, water: @recipe.water } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe" do
    get recipe_url(@recipe), as: :json
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { brew_method_id: @recipe.brew_method_id, coffee_beans_id: @recipe.coffee_beans_id, grind: @recipe.grind, name: @recipe.name, temperature: @recipe.temperature, time: @recipe.time, user_id: @recipe.user_id, water: @recipe.water } }, as: :json
    assert_response 200
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe), as: :json
    end

    assert_response 204
  end
end
