require "application_system_test_case"

class WeetsTest < ApplicationSystemTestCase
  setup do
    @weet = weets(:one)
  end

  test "visiting the index" do
    visit weets_url
    assert_selector "h1", text: "Weets"
  end

  test "creating a Weet" do
    visit weets_url
    click_on "New Weet"

    fill_in "Weet", with: @weet.weet
    click_on "Create Weet"

    assert_text "Weet was successfully created"
    click_on "Back"
  end

  test "updating a Weet" do
    visit weets_url
    click_on "Edit", match: :first

    fill_in "Weet", with: @weet.weet
    click_on "Update Weet"

    assert_text "Weet was successfully updated"
    click_on "Back"
  end

  test "destroying a Weet" do
    visit weets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weet was successfully destroyed"
  end
end
