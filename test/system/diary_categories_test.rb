require "application_system_test_case"

class DiaryCategoriesTest < ApplicationSystemTestCase
  setup do
    @diary_category = diary_categories(:one)
  end

  test "visiting the index" do
    visit diary_categories_url
    assert_selector "h1", text: "Diary Categories"
  end

  test "creating a Diary category" do
    visit diary_categories_url
    click_on "New Diary Category"

    click_on "Create Diary category"

    assert_text "Diary category was successfully created"
    click_on "Back"
  end

  test "updating a Diary category" do
    visit diary_categories_url
    click_on "Edit", match: :first

    click_on "Update Diary category"

    assert_text "Diary category was successfully updated"
    click_on "Back"
  end

  test "destroying a Diary category" do
    visit diary_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diary category was successfully destroyed"
  end
end
