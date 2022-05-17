require "application_system_test_case"

class PublicsTest < ApplicationSystemTestCase
  setup do
    @public = publics(:one)
  end

  test "visiting the index" do
    visit publics_url
    assert_selector "h1", text: "Publics"
  end

  test "should create public" do
    visit publics_url
    click_on "New public"

    click_on "Create Public"

    assert_text "Public was successfully created"
    click_on "Back"
  end

  test "should update Public" do
    visit public_url(@public)
    click_on "Edit this public", match: :first

    click_on "Update Public"

    assert_text "Public was successfully updated"
    click_on "Back"
  end

  test "should destroy Public" do
    visit public_url(@public)
    click_on "Destroy this public", match: :first

    assert_text "Public was successfully destroyed"
  end
end
