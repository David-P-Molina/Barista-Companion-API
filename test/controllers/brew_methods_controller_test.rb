require "test_helper"

class BrewMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brew_method = brew_methods(:one)
  end

  test "should get index" do
    get brew_methods_url, as: :json
    assert_response :success
  end

  test "should create brew_method" do
    assert_difference('BrewMethod.count') do
      post brew_methods_url, params: { brew_method: { description: @brew_method.description, equipment: @brew_method.equipment, name: @brew_method.name } }, as: :json
    end

    assert_response 201
  end

  test "should show brew_method" do
    get brew_method_url(@brew_method), as: :json
    assert_response :success
  end

  test "should update brew_method" do
    patch brew_method_url(@brew_method), params: { brew_method: { description: @brew_method.description, equipment: @brew_method.equipment, name: @brew_method.name } }, as: :json
    assert_response 200
  end

  test "should destroy brew_method" do
    assert_difference('BrewMethod.count', -1) do
      delete brew_method_url(@brew_method), as: :json
    end

    assert_response 204
  end
end
