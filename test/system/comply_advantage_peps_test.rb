require "application_system_test_case"

class ComplyAdvantagePepsTest < ApplicationSystemTestCase
  setup do
    @comply_advantage_pep = comply_advantage_peps(:one)
  end

  test "visiting the index" do
    visit comply_advantage_peps_url
    assert_selector "h1", text: "Comply Advantage Peps"
  end

  test "creating a Comply advantage pep" do
    visit comply_advantage_peps_url
    click_on "New Comply Advantage Pep"

    fill_in "Company", with: @comply_advantage_pep.company_id
    fill_in "Person name", with: @comply_advantage_pep.person_name
    click_on "Create Comply advantage pep"

    assert_text "Comply advantage pep was successfully created"
    click_on "Back"
  end

  test "updating a Comply advantage pep" do
    visit comply_advantage_peps_url
    click_on "Edit", match: :first

    fill_in "Company", with: @comply_advantage_pep.company_id
    fill_in "Person name", with: @comply_advantage_pep.person_name
    click_on "Update Comply advantage pep"

    assert_text "Comply advantage pep was successfully updated"
    click_on "Back"
  end

  test "destroying a Comply advantage pep" do
    visit comply_advantage_peps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comply advantage pep was successfully destroyed"
  end
end
