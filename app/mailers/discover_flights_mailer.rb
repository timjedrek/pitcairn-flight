class DiscoverFlightsMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def discover_flights_email(discover_flight)
    @discover_flight = discover_flight

    if Rails.env.production?
      mail(to: @discover_flight.email, bcc: ["no-reply@pitcairnmailer.com", "flynow@pitcairnflight.com"], subject: "✈️ Discovery Flight at Pitcairn Flight Academy")
    else
      mail(to: @discover_flight.email, bcc: ["no-reply@pitcairnmailer.com"], subject: "✈️ Discovery Flight at Pitcairn Flight Academy")
    end

  end


end
