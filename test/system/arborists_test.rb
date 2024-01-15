require "application_system_test_case"

class ArboristsTest < ApplicationSystemTestCase
  setup do
    @arborist = arborists(:one)
  end

  test "visiting the index" do
    visit arborists_url
    assert_selector "h1", text: "Arborists"
  end

  test "should create arborist" do
    visit arborists_url
    click_on "New arborist"

    check "Etv certified" if @arborist.etv_certified
    fill_in "First name", with: @arborist.first_name
    check "Isa certified" if @arborist.isa_certified
    fill_in "Last name", with: @arborist.last_name
    fill_in "Skills", with: @arborist.skills
    fill_in "Zipcode", with: @arborist.zipcode
    click_on "Create Arborist"

    assert_text "Arborist was successfully created"
    click_on "Back"
  end

  test "should update Arborist" do
    visit arborist_url(@arborist)
    click_on "Edit this arborist", match: :first

    check "Etv certified" if @arborist.etv_certified
    fill_in "First name", with: @arborist.first_name
    check "Isa certified" if @arborist.isa_certified
    fill_in "Last name", with: @arborist.last_name
    fill_in "Skills", with: @arborist.skills
    fill_in "Zipcode", with: @arborist.zipcode
    click_on "Update Arborist"

    assert_text "Arborist was successfully updated"
    click_on "Back"
  end

  test "should destroy Arborist" do
    visit arborist_url(@arborist)
    click_on "Destroy this arborist", match: :first

    assert_text "Arborist was successfully destroyed"
  end
end
