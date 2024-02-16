class RecreationalFlightsMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def recreational_flights_email(recreational_flight)
    @recreational_flight = recreational_flight

    if Rails.env.production?
      mail(to: @recreational_flight.email, bcc: ["no-reply@pitcairnmailer.com", "flynow@pitcairnflight.com"], subject: "✈️ Recreational Flight at Pitcairn Flight Academy")
    else
      mail(to: @recreational_flight.email, bcc: ["no-reply@pitcairnmailer.com"], subject: "✈️ Recreational Flight at Pitcairn Flight Academy")
    end

  end
end
