require "application_system_test_case"

class ForherokusTest < ApplicationSystemTestCase
  setup do
    @forheroku = forherokus(:one)
  end

  test "visiting the index" do
    visit forherokus_url
    assert_selector "h1", text: "Forherokus"
  end

  test "creating a Forheroku" do
    visit forherokus_url
    click_on "New Forheroku"

    fill_in "Textitem  c", with: @forheroku.textitem__c
    click_on "Create Forheroku"

    assert_text "Forheroku was successfully created"
    click_on "Back"
  end

  test "updating a Forheroku" do
    visit forherokus_url
    click_on "Edit", match: :first

    fill_in "Textitem  c", with: @forheroku.textitem__c
    click_on "Update Forheroku"

    assert_text "Forheroku was successfully updated"
    click_on "Back"
  end

  test "destroying a Forheroku" do
    visit forherokus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Forheroku was successfully destroyed"
  end
end
