require "application_system_test_case"

class CitizensTest < ApplicationSystemTestCase
  setup do
    @citizen = citizens(:one)
  end

  test "visiting the index" do
    visit citizens_url
    assert_selector "h1", text: "Citizens"
  end

  test "creating a Citizen" do
    visit citizens_url
    click_on "New Citizen"

    fill_in "Birthday", with: @citizen.birthday
    fill_in "Cns", with: @citizen.cns
    fill_in "Cpf", with: @citizen.cpf
    fill_in "Email", with: @citizen.email
    fill_in "First name", with: @citizen.first_name
    fill_in "Last name", with: @citizen.last_name
    fill_in "Phone", with: @citizen.phone
    fill_in "Photo", with: @citizen.photo
    fill_in "Status", with: @citizen.status
    click_on "Create Citizen"

    assert_text "Citizen was successfully created"
    click_on "Back"
  end

  test "updating a Citizen" do
    visit citizens_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @citizen.birthday
    fill_in "Cns", with: @citizen.cns
    fill_in "Cpf", with: @citizen.cpf
    fill_in "Email", with: @citizen.email
    fill_in "First name", with: @citizen.first_name
    fill_in "Last name", with: @citizen.last_name
    fill_in "Phone", with: @citizen.phone
    fill_in "Photo", with: @citizen.photo
    fill_in "Status", with: @citizen.status
    click_on "Update Citizen"

    assert_text "Citizen was successfully updated"
    click_on "Back"
  end

  test "destroying a Citizen" do
    visit citizens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citizen was successfully destroyed"
  end
end
