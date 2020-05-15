require 'test_helper'

class Admins::DiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diary = diaries(:one)
  end

  test "should get index" do
    get admins_diaries_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_diary_url
    assert_response :success
  end

  test "should create diary" do
    assert_difference('Diary.count') do
      post admins_diaries_url, params: { diary: {  } }
    end

    assert_redirected_to diary_url(Diary.last)
  end

  test "should show diary" do
    get admins_diary_url(@diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_diary_url(@diary)
    assert_response :success
  end

  test "should update diary" do
    patch admins_diary_url(@diary), params: { diary: {  } }
    assert_redirected_to diary_url(@diary)
  end

  test "should destroy diary" do
    assert_difference('Diary.count', -1) do
      delete admins_diary_url(@diary)
    end

    assert_redirected_to admins_diaries_url
  end
end
