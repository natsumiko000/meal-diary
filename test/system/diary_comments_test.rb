require "application_system_test_case"

class DiaryCommentsTest < ApplicationSystemTestCase
  setup do
    @diary_comment = diary_comments(:one)
  end

  test "visiting the index" do
    visit diary_comments_url
    assert_selector "h1", text: "Diary Comments"
  end

  test "creating a Diary comment" do
    visit diary_comments_url
    click_on "New Diary Comment"

    click_on "Create Diary comment"

    assert_text "Diary comment was successfully created"
    click_on "Back"
  end

  test "updating a Diary comment" do
    visit diary_comments_url
    click_on "Edit", match: :first

    click_on "Update Diary comment"

    assert_text "Diary comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Diary comment" do
    visit diary_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diary comment was successfully destroyed"
  end
end
