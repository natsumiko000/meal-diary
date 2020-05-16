require 'test_helper'

class Admins::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get admins_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post admins_categories_url, params: { category: {  } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    get admins_category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch admins_category_url(@category), params: { category: {  } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete admins_category_url(@category)
    end

    assert_redirected_to admins_categories_url
  end
end
