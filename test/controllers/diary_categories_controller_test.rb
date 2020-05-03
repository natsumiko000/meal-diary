require 'test_helper'

class DiaryCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diary_category = diary_categories(:one)
  end

  test "should get index" do
    get diary_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_diary_category_url
    assert_response :success
  end

  test "should create diary_category" do
    assert_difference('DiaryCategory.count') do
      post diary_categories_url, params: { diary_category: {  } }
    end

    assert_redirected_to diary_category_url(DiaryCategory.last)
  end

  test "should show diary_category" do
    get diary_category_url(@diary_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_diary_category_url(@diary_category)
    assert_response :success
  end

  test "should update diary_category" do
    patch diary_category_url(@diary_category), params: { diary_category: {  } }
    assert_redirected_to diary_category_url(@diary_category)
  end

  test "should destroy diary_category" do
    assert_difference('DiaryCategory.count', -1) do
      delete diary_category_url(@diary_category)
    end

    assert_redirected_to diary_categories_url
  end
end
