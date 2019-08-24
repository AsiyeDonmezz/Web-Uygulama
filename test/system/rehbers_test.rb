require "application_system_test_case"

class RehbersTest < ApplicationSystemTestCase
  setup do
    @rehber = rehbers(:one)
  end

  test "visiting the index" do
    visit rehbers_url
    assert_selector "h1", text: "Rehbers"
  end

  test "creating a Rehber" do
    visit rehbers_url
    click_on "New Rehber"

    fill_in "Isim", with: @rehber.isim
    fill_in "Ozet", with: @rehber.ozet
    fill_in "Sehir", with: @rehber.sehir
    click_on "Create Rehber"

    assert_text "Rehber was successfully created"
    click_on "Back"
  end

  test "updating a Rehber" do
    visit rehbers_url
    click_on "Edit", match: :first

    fill_in "Isim", with: @rehber.isim
    fill_in "Ozet", with: @rehber.ozet
    fill_in "Sehir", with: @rehber.sehir
    click_on "Update Rehber"

    assert_text "Rehber was successfully updated"
    click_on "Back"
  end

  test "destroying a Rehber" do
    visit rehbers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rehber was successfully destroyed"
  end
end
