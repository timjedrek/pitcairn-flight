class EnrollmentMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def enrollment_email(message)
    @message = message

    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com", "flynow@pitcairnflight.com"], subject: "✈️ Application to Enroll at Pitcairn Flight Academy")
    else
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com"], subject: "✈️ Application to Enroll at Pitcairn Flight Academy")
    end
  end


end
