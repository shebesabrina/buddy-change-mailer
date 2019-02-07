require "application_system_test_case"

class BuddiesTest < ApplicationSystemTestCase
  setup do
    @buddy = buddies(:one)
  end

  test "visiting the index" do
    visit buddies_url
    assert_selector "h1", text: "Buddies"
  end

  test "creating a Buddy" do
    visit buddies_url
    click_on "New Buddy"

    fill_in "Email", with: @buddy.email
    fill_in "Name", with: @buddy.name
    click_on "Create Buddy"

    assert_text "Buddy was successfully created"
    click_on "Back"
  end

  test "updating a Buddy" do
    visit buddies_url
    click_on "Edit", match: :first

    fill_in "Email", with: @buddy.email
    fill_in "Name", with: @buddy.name
    click_on "Update Buddy"

    assert_text "Buddy was successfully updated"
    click_on "Back"
  end

  test "destroying a Buddy" do
    visit buddies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buddy was successfully destroyed"
  end
end
