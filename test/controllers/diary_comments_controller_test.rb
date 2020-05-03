require 'test_helper'

class DiaryCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diary_comment = diary_comments(:one)
  end

  test "should get index" do
    get diary_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_diary_comment_url
    assert_response :success
  end

  test "should create diary_comment" do
    assert_difference('DiaryComment.count') do
      post diary_comments_url, params: { diary_comment: {  } }
    end

    assert_redirected_to diary_comment_url(DiaryComment.last)
  end

  test "should show diary_comment" do
    get diary_comment_url(@diary_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_diary_comment_url(@diary_comment)
    assert_response :success
  end

  test "should update diary_comment" do
    patch diary_comment_url(@diary_comment), params: { diary_comment: {  } }
    assert_redirected_to diary_comment_url(@diary_comment)
  end

  test "should destroy diary_comment" do
    assert_difference('DiaryComment.count', -1) do
      delete diary_comment_url(@diary_comment)
    end

    assert_redirected_to diary_comments_url
  end
end
