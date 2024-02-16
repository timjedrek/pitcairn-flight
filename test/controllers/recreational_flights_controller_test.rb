require "test_helper"

class RecreationalFlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recreational_flight = recreational_flights(:one)
  end

  test "should get index" do
    get recreational_flights_url
    assert_response :success
  end

  test "should get new" do
    get new_recreational_flight_url
    assert_response :success
  end

  test "should create recreational_flight" do
    assert_difference("RecreationalFlight.count") do
      post recreational_flights_url, params: { recreational_flight: { alternate_availability: @recreational_flight.alternate_availability, alternate_date: @recreational_flight.alternate_date, comments: @recreational_flight.comments, email: @recreational_flight.email, first_name: @recreational_flight.first_name, last_name: @recreational_flight.last_name, occasion: @recreational_flight.occasion, phone: @recreational_flight.phone, preferred_availability: @recreational_flight.preferred_availability, preferred_date: @recreational_flight.preferred_date } }
    end

    assert_redirected_to recreational_flight_url(RecreationalFlight.last)
  end

  test "should show recreational_flight" do
    get recreational_flight_url(@recreational_flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_recreational_flight_url(@recreational_flight)
    assert_response :success
  end

  test "should update recreational_flight" do
    patch recreational_flight_url(@recreational_flight), params: { recreational_flight: { alternate_availability: @recreational_flight.alternate_availability, alternate_date: @recreational_flight.alternate_date, comments: @recreational_flight.comments, email: @recreational_flight.email, first_name: @recreational_flight.first_name, last_name: @recreational_flight.last_name, occasion: @recreational_flight.occasion, phone: @recreational_flight.phone, preferred_availability: @recreational_flight.preferred_availability, preferred_date: @recreational_flight.preferred_date } }
    assert_redirected_to recreational_flight_url(@recreational_flight)
  end

  test "should destroy recreational_flight" do
    assert_difference("RecreationalFlight.count", -1) do
      delete recreational_flight_url(@recreational_flight)
    end

    assert_redirected_to recreational_flights_url
  end
end
