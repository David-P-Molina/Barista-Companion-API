require "test_helper"

class RoastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roaster = roasters(:one)
  end

  test "should get index" do
    get roasters_url, as: :json
    assert_response :success
  end

  test "should create roaster" do
    assert_difference('Roaster.count') do
      post roasters_url, params: { roaster: { description: @roaster.description, name: @roaster.name, year_founded: @roaster.year_founded } }, as: :json
    end

    assert_response 201
  end

  test "should show roaster" do
    get roaster_url(@roaster), as: :json
    assert_response :success
  end

  test "should update roaster" do
    patch roaster_url(@roaster), params: { roaster: { description: @roaster.description, name: @roaster.name, year_founded: @roaster.year_founded } }, as: :json
    assert_response 200
  end

  test "should destroy roaster" do
    assert_difference('Roaster.count', -1) do
      delete roaster_url(@roaster), as: :json
    end

    assert_response 204
  end
end
