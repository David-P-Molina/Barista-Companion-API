require "test_helper"

class CoffeeBeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_bean = coffee_beans(:one)
  end

  test "should get index" do
    get coffee_beans_url, as: :json
    assert_response :success
  end

  test "should create coffee_bean" do
    assert_difference('CoffeeBean.count') do
      post coffee_beans_url, params: { coffee_bean: { description: @coffee_bean.description, name: @coffee_bean.name, notes: @coffee_bean.notes, roast: @coffee_bean.roast, roaster_id: @coffee_bean.roaster_id, user_id: @coffee_bean.user_id, whole_bean: @coffee_bean.whole_bean } }, as: :json
    end

    assert_response 201
  end

  test "should show coffee_bean" do
    get coffee_bean_url(@coffee_bean), as: :json
    assert_response :success
  end

  test "should update coffee_bean" do
    patch coffee_bean_url(@coffee_bean), params: { coffee_bean: { description: @coffee_bean.description, name: @coffee_bean.name, notes: @coffee_bean.notes, roast: @coffee_bean.roast, roaster_id: @coffee_bean.roaster_id, user_id: @coffee_bean.user_id, whole_bean: @coffee_bean.whole_bean } }, as: :json
    assert_response 200
  end

  test "should destroy coffee_bean" do
    assert_difference('CoffeeBean.count', -1) do
      delete coffee_bean_url(@coffee_bean), as: :json
    end

    assert_response 204
  end
end
