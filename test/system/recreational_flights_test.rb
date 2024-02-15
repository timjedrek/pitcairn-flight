require "application_system_test_case"

class RecreationalFlightsTest < ApplicationSystemTestCase
  setup do
    @recreational_flight = recreational_flights(:one)
  end

  test "visiting the index" do
    visit recreational_flights_url
    assert_selector "h1", text: "Recreational flights"
  end

  test "should create recreational flight" do
    visit recreational_flights_url
    click_on "New recreational flight"

    fill_in "Alternate availability", with: @recreational_flight.alternate_availability
    fill_in "Alternate date", with: @recreational_flight.alternate_date
    fill_in "Comments", with: @recreational_flight.comments
    fill_in "Email", with: @recreational_flight.email
    fill_in "First name", with: @recreational_flight.first_name
    fill_in "Last name", with: @recreational_flight.last_name
    fill_in "Occasion", with: @recreational_flight.occasion
    fill_in "Phone", with: @recreational_flight.phone
    fill_in "Preferred availability", with: @recreational_flight.preferred_availability
    fill_in "Preferred date", with: @recreational_flight.preferred_date
    click_on "Create Recreational flight"

    assert_text "Recreational flight was successfully created"
    click_on "Back"
  end

  test "should update Recreational flight" do
    visit recreational_flight_url(@recreational_flight)
    click_on "Edit this recreational flight", match: :first

    fill_in "Alternate availability", with: @recreational_flight.alternate_availability
    fill_in "Alternate date", with: @recreational_flight.alternate_date
    fill_in "Comments", with: @recreational_flight.comments
    fill_in "Email", with: @recreational_flight.email
    fill_in "First name", with: @recreational_flight.first_name
    fill_in "Last name", with: @recreational_flight.last_name
    fill_in "Occasion", with: @recreational_flight.occasion
    fill_in "Phone", with: @recreational_flight.phone
    fill_in "Preferred availability", with: @recreational_flight.preferred_availability
    fill_in "Preferred date", with: @recreational_flight.preferred_date
    click_on "Update Recreational flight"

    assert_text "Recreational flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Recreational flight" do
    visit recreational_flight_url(@recreational_flight)
    click_on "Destroy this recreational flight", match: :first

    assert_text "Recreational flight was successfully destroyed"
  end
end
