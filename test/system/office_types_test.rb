require "application_system_test_case"

class OfficeTypesTest < ApplicationSystemTestCase
  setup do
    @office_type = office_types(:one)
  end

  test "visiting the index" do
    visit office_types_url
    assert_selector "h1", text: "Office Types"
  end

  test "creating a Office type" do
    visit office_types_url
    click_on "New Office Type"

    fill_in "Officetype", with: @office_type.officeType_id
    fill_in "Officetype name", with: @office_type.officeType_name
    click_on "Create Office type"

    assert_text "Office type was successfully created"
    click_on "Back"
  end

  test "updating a Office type" do
    visit office_types_url
    click_on "Edit", match: :first

    fill_in "Officetype", with: @office_type.officeType_id
    fill_in "Officetype name", with: @office_type.officeType_name
    click_on "Update Office type"

    assert_text "Office type was successfully updated"
    click_on "Back"
  end

  test "destroying a Office type" do
    visit office_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Office type was successfully destroyed"
  end
end
