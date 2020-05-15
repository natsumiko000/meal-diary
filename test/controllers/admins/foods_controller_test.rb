require 'test_helper'

class Admins::FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get admins_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_food_url
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post admins_foods_url, params: { food: {  } }
    end

    assert_redirected_to food_url(Food.last)
  end

  test "should show food" do
    get admins_food_url(@food)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_food_url(@food)
    assert_response :success
  end

  test "should update food" do
    patch admins_food_url(@food), params: { food: {  } }
    assert_redirected_to food_url(@food)
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete admins_food_url(@food)
    end

    assert_redirected_to admins_foods_url
  end
end
